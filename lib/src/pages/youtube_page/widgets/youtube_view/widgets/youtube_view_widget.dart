import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/bloc/youtube_view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_view_state.dart';
import 'package:youtube_downloader_nullsafety/src/pages/youtube_page/widgets/youtube_view/widgets/progress_bar_widget.dart';
import 'package:youtube_downloader_nullsafety/src/pages/youtube_page/widgets/youtube_view/widgets/search_bar.dart';
import 'package:youtube_downloader_nullsafety/src/pages/youtube_page/widgets/youtube_view/widgets/video_view.dart';

class YoutubeViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YoutubeViewBloc, YoutubeViewState>(
      builder: (context, state) {
        return ListView(
          children: [
            SearchBar(
              callback: (url) => context.read<YoutubeViewBloc>().urlSubmit(url),
            ),
            if (state is Loading) Center(child: CircularProgressIndicator()),
            state.maybeMap(null,
                data: (value) => VideoView(info: value.videoInfo),
                downloading: (value) => VideoView(info: value.videoInfo),
                startedDownloading: (value) => VideoView(info: value.videoInfo),
                orElse: () => SizedBox()),
            // if (state is Data) VideoView(info: state.videoInfo),
            if (state is StartedDownloading) Text('Starting...'),
            if (state is Downloading) ...[
              ProgressBarWidget(downloadInfo: state.downloadInfo)
            ]
          ],
        );
      },
    );
  }
}
