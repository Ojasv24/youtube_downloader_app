import 'package:youtube_downloader_nullsafety/src/model/video_info.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_stream.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:http/http.dart' as http;

class YoutubeRepository {
  final YoutubeExplode _yt;

  YoutubeRepository() : _yt = YoutubeExplode();

  Future<VideoInfo> extractInfo(String url) async {
    final video = await _yt.videos.get(url);
    final manifest = await _yt.videos.streamsClient.getManifest(url);
    final response = await http.head(Uri.parse(video.thumbnails.maxResUrl));

    final imageUrl = (response.statusCode == 200)
        ? video.thumbnails.maxResUrl
        : video.thumbnails.highResUrl;

    return VideoInfo(
      url: url,
      author: video.author,
      thumbnailUrl: imageUrl,
      timestamp: _durationToString(video.duration),
      videoQualities: manifest.videoOnly.getAllVideoQualitiesLabel().toList(),
      videoTitle: video.title,
      selectedQualityIndex: -1,
    );
  }

  Future<YoutubeStream> extractStreams(String url, String qualityLabel) async {
    final manifest = await _yt.videos.streamsClient.getManifest(url);

    final videoStreamInfo = manifest.videoOnly
        .firstWhere((element) => element.videoQualityLabel == qualityLabel);
    final audioStreamInfo = manifest.audioOnly.withHighestBitrate();

    return YoutubeStream(
      audioStreamUrl: audioStreamInfo.url,
      videoStreamUrl: videoStreamInfo.url,
    );
  }

  String _durationToString(Duration? duration) {
    if (duration == null) {
      return 'null';
    }
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    if (duration.inHours.remainder(60) == 0) {
      if (duration.inMinutes.remainder(60) == 0) {
        return "0:$twoDigitSeconds";
      }
      return "$twoDigitMinutes:$twoDigitSeconds";
    }

    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
