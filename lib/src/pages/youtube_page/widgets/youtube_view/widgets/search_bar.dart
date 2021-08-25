import 'package:flutter/material.dart';

typedef void UrlCallback(String url);

class SearchBar extends StatefulWidget {
  final UrlCallback callback;

  const SearchBar({Key? key, required this.callback}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _textController,
        onSubmitted: (value) {
          widget.callback(_textController.text);
        },
        decoration: InputDecoration(
          suffixIcon: _textController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: Icon(
                    Icons.clear,
                  ),
                )
              : null,
          hintText: "Enter Youtube Video Url",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }
}
