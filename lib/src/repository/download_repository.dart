import 'dart:io';
import 'package:http/http.dart' as http;

typedef _DownloadCallback = void Function(int downloaded);
typedef ProgressCallback = void Function(int current, int total);

const int _MAX_FILE_WRITE_CHUNK = 20 * 1024 * 1024;

class DownloadRepository {
  Future<void> download(Uri url, String filepath,
      {ProgressCallback? onReceiveProgress}) async {
    return downloadMultipart(url, filepath, 1,
        onReceiveProgress: onReceiveProgress);
  }

  Future<void> downloadMultipart(Uri url, String filepath, int threads,
      {ProgressCallback? onReceiveProgress}) async {
    final reponse = await http.head(url);

    final size = int.parse(reponse.headers['content-length'] ?? '');

    final file = await File(filepath).open(mode: FileMode.write);
    final chunks = size ~/ _MAX_FILE_WRITE_CHUNK;

    int fileStart = 0;
    for (var i = 0; i < chunks - 1; i++) {
      await file.setPosition(fileStart);
      await file.writeFrom(List<int>.filled(_MAX_FILE_WRITE_CHUNK, 0));
      fileStart += _MAX_FILE_WRITE_CHUNK;
    }

    await file.setPosition(fileStart);
    await file.writeFrom(List<int>.filled(size - fileStart, 0));

    final partSize = size ~/ threads;

    final List<Future> futures = [];

    var total = 0;

    void addToTotal(int downloaded) {
      total += downloaded;
      onReceiveProgress!(total, size);
    }

    int start = 0;
    for (var i = 0; i < threads - 1; i++) {
      int end = start + partSize;
      futures.add(_downloadOnePart(url, filepath, start, end, addToTotal));
      start = end;
    }
    futures.add(_downloadOnePart(url, filepath, start, size, addToTotal));

    await Future.wait(futures);
  }

  Future<void> _downloadOnePart(Uri url, String filepath, int start, int end,
      _DownloadCallback callback) async {
    final file = await File(filepath).open(mode: FileMode.write);

    final req = http.Request('get', url);
    req.headers.clear();
    req.headers.addAll({'Range': 'bytes=$start-$end'});

    final stream = await req.send();
    await file.setPosition(start);
    await stream.stream.listen((value) {
      file.writeFromSync(value);
      callback(value.length);
    }).asFuture();

    await file.close();
  }
}
