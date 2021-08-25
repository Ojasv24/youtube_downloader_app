import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_downloader_nullsafety/src/model/file_info.dart';

part 'youtube_list_state.freezed.dart';

@freezed
class YoutubeListState with _$YoutubeListState {
  const factory YoutubeListState() = Initial;
  const factory YoutubeListState.loading() = Loading;
  const factory YoutubeListState.data(List<FileInfo> files) = Data;
}
