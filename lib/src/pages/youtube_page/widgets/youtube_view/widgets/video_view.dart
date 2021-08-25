import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/bloc/youtube_view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/model/video_info.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_view_state.dart';

class VideoView extends StatelessWidget {
  final VideoInfo info;

  const VideoView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.network(info.thumbnailUrl),
              borderRadius: BorderRadius.circular(8),
            ),
            SizedBox(height: 12),
            Text(
              info.videoTitle,
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 6),
            Text(
              info.author,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 4),
            Text(
              info.timestamp.toString(),
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(36, 37, 42, 100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: Text(
                          info.selectedQualityIndex >= 0
                              ? info.videoQualities[info.selectedQualityIndex]
                              : 'Select quality',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        elevation: 16,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                        underline: SizedBox(),
                        onChanged: (value) {
                          context.read<YoutubeViewBloc>().changeQuality(
                              info.videoQualities.indexOf(value ?? ''));
                        },
                        items: info.videoQualities.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 22),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: info.selectedQualityIndex == -1 ||
                            !(context.read<YoutubeViewBloc>().state is Data)
                        ? null
                        : () => context.read<YoutubeViewBloc>().download(),
                    child: Text('Download'),
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Theme.of(context).accentColor,
                        textStyle: TextStyle(),
                        padding: EdgeInsets.all(16)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
