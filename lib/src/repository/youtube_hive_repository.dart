import 'package:get_it/get_it.dart';
import 'package:youtube_downloader_nullsafety/hive.dart';
import 'package:youtube_downloader_nullsafety/src/model/file_info.dart';
import 'package:youtube_downloader_nullsafety/src/repository/hive_repository.dart';

class YoutubeHiveRepository {
  final HiveRepository _hiveRepository;

  YoutubeHiveRepository() : _hiveRepository = GetIt.I<HiveRepository>();

  Future<int> addToBox(FileInfo item) async {
    return _hiveRepository.addToBox(YOUTUBE_BOX_NAME, item.toJson());
  }

  Future<List<FileInfo>> getAllItems() async {
    return (await _hiveRepository.getAllItems(YOUTUBE_BOX_NAME))
        .map((e) => FileInfo.fromJson(e))
        .toList();
  }

  Future<void> deleteItem(int index) async {
    return (await _hiveRepository.deleteItem(YOUTUBE_BOX_NAME, index));
  }
}
