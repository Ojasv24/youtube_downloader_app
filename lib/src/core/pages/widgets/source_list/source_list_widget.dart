import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';
import 'package:provider/provider.dart';
import 'package:youtube_downloader_nullsafety/src/core/bloc/list_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/bloc/view_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/list_state.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/view_state.dart'
    as ViewState;
import 'package:youtube_downloader_nullsafety/src/core/pages/source_page.dart';
import 'package:youtube_downloader_nullsafety/src/core/pages/widgets/source_view/widgets/progress_bar_widget.dart';

class ListWidget<T> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final input = Provider.of<SourcePageInput<T>>(context);
    return BlocBuilder<ListBloc<T>, ListState<T>>(builder: (context, state) {
      print(state.runtimeType);
      if (!(state is Data<T>)) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      return Column(
        children: [
          BlocBuilder<ViewBloc<T>, ViewState.ViewState<T>>(
              builder: (context, state) {
            if (state is ViewState.Downloading<T>) {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(input.getTitle(state.videoInfo)),
                      subtitle: Text(
                        input.getSubTitle(state.videoInfo),
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      leading: ClipRRect(
                        child: Image.network(state.videoInfo.thumbnail),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.all(4),
                    ),
                    ProgressBarWidget(downloadInfo: state.downloadInfo),
                  ],
                ),
              );
            }
            return SizedBox();
          }),
          Expanded(
            child: ListView.builder(
              itemCount: state.files.length,
              itemBuilder: (context, index) {
                final item = state.files[index];
                return Column(
                  children: [
                    ListTile(
                      title: Text(input.getTitle(item.videoInfo)),
                      subtitle: Text(
                        input.getSubTitle(item.videoInfo),
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      leading: ClipRRect(
                        child: Image.network(item.videoInfo.thumbnail),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onTap: () {
                        OpenFile.open(item.filePath, type: 'video/mp4');
                      },
                      contentPadding: EdgeInsets.all(4),
                      trailing: IconButton(
                        onPressed: () {
                          context.read<ListBloc<T>>().delete(index);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                    Divider()
                  ],
                );
              },
            ),
          ),
        ],
      );
    });
  }
}
