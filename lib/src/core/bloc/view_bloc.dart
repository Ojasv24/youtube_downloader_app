import 'package:bloc/bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/file_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/view_state.dart';
import 'package:youtube_downloader_nullsafety/src/core/repository/i_source_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/hive_repository2.dart';

class ViewBloc<T> extends Cubit<ViewState<T>> {
  final ISourceRepository<T> repository;
  final HiveRepository2<FileInfo<T>> _hiveRepository;

  ViewBloc(String hiveBoxName, this.repository, this._hiveRepository)
      : super(ViewState<T>());

  void urlSubmit(String url) async {
    if (state is Loading<T> || state is Downloading<T>) {
      return;
    }
    emit(ViewState<T>.loading());
    final info = await repository.getInfo(url);
    emit(ViewState<T>.data(info));
  }

  void changeQuality(int index) {
    if (state is Data<T>) {
      emit((state as Data<T>).copyWith.videoInfo(selected: index));
    }
  }

  Future<void> download() async {
    if (state is Data<T>) {
      final dataState = (state as Data<T>);

      emit(ViewState<T>.starting(dataState.videoInfo));

      final filePath = await repository.download(
        dataState.videoInfo,
        callback: (info) {
          emit(ViewState<T>.downloading(dataState.videoInfo, info));
        },
      );

      emit(ViewState<T>.data(dataState.videoInfo));
      _hiveRepository.addItem(
          FileInfo(videoInfo: dataState.videoInfo, filePath: filePath));
    }
  }
}
