import 'package:bloc/bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/file_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/list_state.dart';
import 'package:youtube_downloader_nullsafety/src/repository/hive_repository2.dart';

class ListBloc<T> extends Cubit<ListState<T>> {
  final HiveRepository2<FileInfo<T>> _hiveRepository;

  ListBloc(this._hiveRepository) : super(ListState<T>());

  void load() async {
    emit(ListState.loading());
    await for (final files in _hiveRepository.streamItems()) {
      emit(ListState.data(files));
    }
  }

  void delete(int index) async {
    final item = (state as Data<T>).files[index];
    await _hiveRepository.deleteItem(item);
  }
}
