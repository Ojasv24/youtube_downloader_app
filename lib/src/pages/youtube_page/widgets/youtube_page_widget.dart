import 'package:flutter/material.dart';
import 'package:youtube_downloader_nullsafety/src/pages/youtube_page/widgets/youtube_list/youtube_list.dart';
import 'package:youtube_downloader_nullsafety/src/pages/youtube_page/widgets/youtube_view/youtube_view.dart';

class YoutubePageWidget extends StatefulWidget {
  @override
  _YoutubePageWidgetState createState() => _YoutubePageWidgetState();
}

class _YoutubePageWidgetState extends State<YoutubePageWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Downloader"),
      ),
      body: currentIndex == 0 ? YoutubeView() : YoutubeListWidget(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download_done),
            label: 'All Downloads',
          )
        ],
      ),
    );
  }
}
