import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/widgets/source_list/source_list_widget.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/widgets/source_view/widgets/source_view_widget.dart';

import '../source_page.dart';

class SourcePageWidget<T> extends StatefulWidget {
  @override
  _SourcePageWidgetState<T> createState() => _SourcePageWidgetState<T>();
}

class _SourcePageWidgetState<T> extends State<SourcePageWidget<T>> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<SourcePageInput<T>>(context).appBarTitle),
      ),
      body: (currentIndex == 0) ? SourceViewWidget<T>() : ListWidget<T>(),
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
