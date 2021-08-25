import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_list_state.dart';
import 'package:youtube_downloader_nullsafety/src/repository/youtube_hive_repository.dart';

class YoutubeListBloc extends Cubit<YoutubeListState> {
  final YoutubeHiveRepository _youtubeHiveRepository;
  YoutubeListBloc()
      : _youtubeHiveRepository = GetIt.I<YoutubeHiveRepository>(),
        super(YoutubeListState());

  void load() async {
    emit(YoutubeListState.loading());
    final items = await _youtubeHiveRepository.getAllItems();
    emit(YoutubeListState.data(items));
  }

  void reload() async {
    final items = await _youtubeHiveRepository.getAllItems();
    emit(YoutubeListState.data(items));
  }

  void delete(int index) async {
    await _youtubeHiveRepository.deleteItem(index);
    reload();
  }
}
