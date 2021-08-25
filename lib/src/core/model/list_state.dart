import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/file_info.dart';

part 'list_state.freezed.dart';

@freezed
class ListState<T> with _$ListState<T> {
  const factory ListState() = Initial<T>;
  const factory ListState.loading() = Loading<T>;
  const factory ListState.data(List<FileInfo<T>> files) = Data<T>;
}
