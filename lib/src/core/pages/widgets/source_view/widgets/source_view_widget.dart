import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:youtube_downloader_nullsafety/src/core/bloc/view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/view_state.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/source_page.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/widgets/source_view/widgets/progress_bar_widget.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/widgets/source_view/widgets/search_bar.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/widgets/source_view/widgets/video_view.dart';

class SourceViewWidget<T> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewBloc<T>, ViewState<T>>(
      builder: (context, state) {
        return ListView(
          children: [
            SearchBar(
              callback: (url) => context.read<ViewBloc<T>>().urlSubmit(url),
            ),
            if (state is Loading<T>) Center(child: CircularProgressIndicator()),
            state.maybeMap(
              (value) => SizedBox(),
              orElse: () => SizedBox(),
              starting: (value) => VideoView<T>(
                info: value.videoInfo,
              ),
              data: (value) => VideoView<T>(
                info: value.videoInfo,
              ),
              downloading: (value) => VideoView<T>(
                info: value.videoInfo,
              ),
            ),
            if (state is Starting<T>) Text('Starting...'),
            if (state is Downloading<T>) ...[
              ProgressBarWidget(downloadInfo: state.downloadInfo)
            ]
          ],
        );
      },
    );
  }
}
