import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_downloader_nullsafety/src/bloc/youtube_list_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/bloc/youtube_view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/pages/youtube_page/widgets/youtube_page_widget.dart';
import 'package:youtube_downloader_nullsafety/src/repository/download_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/ffmpeg_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/youtube_hive_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/youtube_repository.dart';

class YoutubePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YoutubeViewBloc(
        GetIt.I<YoutubeRepository>(),
        GetIt.I<DownloadRepository>(),
        GetIt.I<FfmpedRepository>(),
        GetIt.I<YoutubeHiveRepository>(),
      ),
      child: BlocProvider(
        create: (BuildContext context) => GetIt.I<YoutubeListBloc>()..load(),
        child: YoutubePageWidget(),
      ),
    );
  }
}
