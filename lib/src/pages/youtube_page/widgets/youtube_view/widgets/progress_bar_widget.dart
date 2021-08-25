import 'package:flutter/material.dart';
import 'package:youtube_downloader_nullsafety/src/model/download_info.dart';


class ProgressBarWidget extends StatelessWidget {
  final DownloadInfo downloadInfo;

  ProgressBarWidget({Key? key, required this.downloadInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          child: LinearProgressIndicator(
            minHeight: 12,
            value: downloadInfo.type == ProgressType.Merge
                ? null
                : getDownloadPrecent(),
          ),
        ),
        Center(
            child: Text(typeToString(downloadInfo.type) +
                ' ' +
                ((downloadInfo.type != ProgressType.Merge)
                    ? getDownloadPrecentString()
                    : ''))),
        // if (downloadInfo.type != ProgressType.Merge)
        //   Text(getDownloadPrecentString())
      ]),
    );
  }

  double getDownloadPrecent() {
    if (downloadInfo.total == 0) {
      return 0;
    }
    return (downloadInfo.current / downloadInfo.total);
  }

  String getDownloadPrecentString() {
    return (getDownloadPrecent() * 100).toInt().toString() + '%';
  }

  String typeToString(ProgressType type) {
    if (type == ProgressType.VideoDownload) {
      return 'Downloading Video...';
    }
    if (type == ProgressType.AudioDownload) {
      return 'Downloading Audio...';
    }
    return 'Merging...';
  }
}
