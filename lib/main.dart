import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/source_page.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_video_info.dart';
import 'package:youtube_downloader_nullsafety/src/repository/youtube_repository_2.dart';

void main() async {
  await Hive.initFlutter();
  runApp(App());
}

Color themeColor = Colors.amber;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SourcePage<YoutubeVideoInfo>(
          input: SourcePageInput(
            appBarTitle: 'Youtube',
            repository: YoutubeRepository2(),
            path: 'youtube2',
            getId: (item) => item.videoInfo.url,
            extraBuilder: (extra) => extra != null
                ? Column(
                    children: [
                      Text(extra.videoTitle),
                      Text(extra.author),
                      Text(extra.timestamp),
                    ],
                  )
                : SizedBox(),
            getTitle: (item) => item.extra!.videoTitle,
            getSubTitle: (item) => item.extra!.author,
          ),
        ),
        theme: ThemeData.dark().copyWith(
          accentColor: themeColor,
          textSelectionTheme: TextSelectionThemeData(cursorColor: themeColor),
          scaffoldBackgroundColor: Color.fromRGBO(36, 37, 42, 100),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: themeColor,
            ),
            headline3: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ));
  }
}
