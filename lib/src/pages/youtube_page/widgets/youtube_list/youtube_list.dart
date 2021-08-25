import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';
import 'package:youtube_downloader_nullsafety/src/bloc/youtube_list_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/bloc/youtube_view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_list_state.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_view_state.dart'
    as ViewState;
import 'package:youtube_downloader_nullsafety/src/pages/youtube_page/widgets/youtube_view/widgets/progress_bar_widget.dart';

class YoutubeListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YoutubeListBloc, YoutubeListState>(
      builder: (context, state) {
        if (!(state is Data)) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Column(
          children: [
            BlocBuilder<YoutubeViewBloc, ViewState.YoutubeViewState>(
              builder: (context, state) {
                if (state is ViewState.Downloading) {
                  return Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(state.videoInfo.videoTitle),
                          subtitle: Text(
                            state.videoInfo.author,
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          leading: ClipRRect(
                            child: Image.network(state.videoInfo.thumbnailUrl),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.all(4),
                        ),
                        ProgressBarWidget(downloadInfo: state.downloadInfo),
                      ],
                    ),
                  );
                }
                return SizedBox();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.files.length,
                itemBuilder: (context, index) {
                  final item = state.files[index];
                  return Column(
                    children: [
                      ListTile(
                        title: Text(item.videoInfo.videoTitle),
                        subtitle: Text(
                          item.videoInfo.author,
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        leading: ClipRRect(
                          child: Image.network(item.videoInfo.thumbnailUrl),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onTap: () {
                          OpenFile.open(item.filePath, type: 'video/mp4');
                        },
                        contentPadding: EdgeInsets.all(4),
                        trailing: IconButton(
                          onPressed: () {
                            context.read<YoutubeListBloc>().delete(index);
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                      Divider()
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
