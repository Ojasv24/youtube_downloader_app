import 'dart:convert';
import 'package:http/http.dart' as http;

class TwitterInfo {
  final thumbnailUrl;
  final tweet;
  final List<String> videoUrl;
  final List<String> videoQualities;

  TwitterInfo(
      this.thumbnailUrl, this.tweet, this.videoUrl, this.videoQualities);
}

Future<TwitterInfo> getTwitterInfo(String url) async {
  final videoUrl = url;

  late final String videoId;

  if (videoUrl.contains('s?=')) {
    videoId = videoUrl.split('/')[5].split('?')[0];
  } else {
    videoId = videoUrl.split('/')[5];
  }
  var log = {};

  var sources = {
    'video_url': 'https://twitter.com/i/videos/tweet/' + videoId,
    'activation_ep': 'https://api.twitter.com/1.1/guest/activate.json',
    'api_ep': 'https://api.twitter.com/1.1/statuses/show.json?id=' + videoId
  };
  var headers = {
    'User-agent':
        'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0',
    'accept':
        'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
    'accept-language':
        'es-419,es;q=0.9,es-ES;q=0.8,en;q=0.7,en-GB;q=0.6,en-US;q=0.5'
  };
  final session = Session();

  var tokenRequest = await session.get(sources['video_url']!, headers);

  var bearerFileRegExp = RegExp(
    r'src="(.*js)',
    caseSensitive: false,
    multiLine: false,
  );
  var bearerTokenRegExp = RegExp(
    r'Bearer ([a-zA-Z0-9%-])+',
    caseSensitive: false,
    multiLine: false,
  );
  var videoQualitiesRegExp = RegExp(
    r'vid/(.*)/',
    caseSensitive: false,
    multiLine: false,
  );

  var bearerFile = bearerFileRegExp.firstMatch(tokenRequest)!.group(1);
  var fileContent = await session.get(bearerFile.toString(), headers);
  var bearerToken = bearerTokenRegExp.firstMatch(fileContent)!.group(0);
  headers['authorization'] = bearerToken!;

  var apiRequest = await session.get(sources['api_ep']!, headers);
  var image = json.decode(apiRequest)['extended_entities']['media'][0];
  var videos = json.decode(apiRequest)['extended_entities']['media'][0]
      ['video_info']['variants'];
  log['vid_list'] = videos;

  List<String> videoUrls = [];
  List<String> videoQualities = [];

  for (var i = 0; i < videos.length; i++) {
    if (videos[i]['content_type'] == 'video/mp4') {
      videoUrls.add((videos[i]['url']));
      videoQualities.add(videoQualitiesRegExp
          .firstMatch(videos[i]['url'])!
          .group(1)
          .toString());
    }
  }

  return TwitterInfo(image['media_url'], json.decode(apiRequest)['text'],
      videoUrls, videoQualities);
}

class Session {
  Future<String> get(String url, Map<String, String> headers) async {
    var response = await http.get(Uri.parse(url), headers: headers);
    updateCookie(response, headers);
    return response.body;
  }

  Future<Map> post(
      String url, dynamic data, Map<String, String> headers) async {
    var response =
        await http.post(Uri.parse(url), body: data, headers: headers);
    updateCookie(response, headers);
    return json.decode(response.body);
  }

  void updateCookie(http.Response response, Map<String, String> headers) {
    var rawCookie = response.headers['set-cookie'];
    if (rawCookie != null) {
      var index = rawCookie.indexOf(';');
      headers['cookie'] =
          (index == -1) ? rawCookie : rawCookie.substring(0, index);
    }
  }
}
