import 'dart:io';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';

Future<void> mergeVideoAndAudio(
    String videoPath, String audioPath, String mergedPath) async {
  final FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();
  File completeVideo = File(mergedPath);
  File saveFileVideo = File(videoPath);
  File saveFileAudio = File(audioPath);
  var arguments = [
    "-i",
    "${saveFileVideo.path}",
    "-i",
    "${saveFileAudio.path}",
    "-c",
    "copy",
    "${completeVideo.path}"
  ];
  await _flutterFFmpeg
      .executeWithArguments(arguments)
      .then((returnCode) => print("Return code $returnCode"));
  saveFileVideo.delete();
  saveFileAudio.delete();
}
