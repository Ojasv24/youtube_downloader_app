import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_downloader_nullsafety/src/core/bloc/view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/view_state.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/source_page.dart';

class VideoView<T> extends StatelessWidget {
  final VideoInfo<T> info;

  VideoView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final extraBuilder = Provider.of<SourcePageInput<T>>(context).extraBuilder;
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(info.thumbnail),
              borderRadius: BorderRadius.circular(8),
            ),
            if (extraBuilder != null) extraBuilder(info.extra),
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
                          info.selected >= 0
                              ? info.videoQualities[info.selected]
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
                          context.read<ViewBloc<T>>().changeQuality(
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
                    onPressed: info.selected == -1 ||
                            !(context.read<ViewBloc<T>>().state is Data<T>)
                        ? null
                        : () => context.read<ViewBloc<T>>().download(),
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
