import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:youtube_downloader_nullsafety/src/core/bloc/list_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/bloc/view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/file_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/widgets/source_page_widget.dart';
import 'package:youtube_downloader_nullsafety/src/core/repository/i_source_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/hive_repository2.dart';

typedef ExtraWidgetBuilder<T> = Widget Function(T? extra);
typedef StringGetter<T> = String Function(T item);

class SourcePageInput<T> {
  final ISourceRepository<T> repository;
  final ExtraWidgetBuilder<T>? extraBuilder;
  final String appBarTitle;
  final StringGetter<VideoInfo<T>> getTitle;
  final StringGetter<VideoInfo<T>> getSubTitle;
  final GetId<FileInfo<T>> getId;
  final String path;

  SourcePageInput({
    required this.repository,
    required this.extraBuilder,
    required this.appBarTitle,
    required this.getTitle,
    required this.getSubTitle,
    required this.getId,
    required this.path,
  });
}

class SourcePage<T> extends StatelessWidget {
  final SourcePageInput<T> input;
  SourcePage({Key? key, required this.input}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _hiveRepository = HiveRepository2<FileInfo<T>>(
      input.path,
      (item) => item.toJson(),
      (json) => FileInfo.fromJson(json),
      input.getId,
    );
    return Provider.value(
      value: input,
      child: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) =>
              ViewBloc<T>("youtube", input.repository, _hiveRepository),
        ),
        BlocProvider(
          create: (context) => ListBloc<T>(
            _hiveRepository,
          )..load(),
        )
      ], child: SourcePageWidget<T>()),
    );
  }
}
