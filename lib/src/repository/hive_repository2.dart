import 'dart:async';
import 'dart:collection';

import 'package:hive/hive.dart';
import 'package:youtube_downloader_nullsafety/src/core/repository/i_store_repository.dart';

typedef ToJson<T> = Map<String, dynamic> Function(T item);
typedef FromJson<T> = T Function(Map<String, dynamic> map);

typedef GetId<T> = String Function(T item);

class HiveRepository2<T> implements IStoreRepository<T> {
  final ToJson<T> _toJson;
  final FromJson<T> _fromJson;
  final GetId<T> _getId;

  final Future<Box> _boxFuture;

  LinkedHashMap<String, T>? _itemsMap;

  StreamController<List<T>>? _controller;

  HiveRepository2(String _boxName, this._toJson, this._fromJson, this._getId)
      : _boxFuture = Hive.openBox(_boxName);

  @override
  Future<void> addItem(T item) async {
    final box = await _boxFuture;
    final itemsMap = await _getItemsMap();

    final key = _getId(item);
    itemsMap[key] = item;
    box.put(key, _toJson(item));
    _controller?.add(itemsMap.values.toList());
  }

  @override
  Future<void> deleteItem(T item) async {
    final box = await _boxFuture;
    final itemsMap = await _getItemsMap();

    final key = _getId(item);

    itemsMap.remove(key);
    box.delete(key);
    _controller?.add(itemsMap.values.toList());
  }

  @override
  Future<T?> getItem(String id) async {
    return (await _getItemsMap())[id];
  }

  @override
  Future<List<T>> listItems() async {
    final itemsMap = await _getItemsMap();
    return itemsMap.values.toList();
  }

  @override
  Stream<List<T>> streamItems() {
    _controller?.close();
    _controller = StreamController();
    listItems().then((value) => _controller?.add(value));
    return _controller!.stream;
  }

  @override
  Future<void> updateItem(T item) async {
    final box = await _boxFuture;
    final itemsMap = await _getItemsMap();

    final key = _getId(item);

    if (itemsMap.containsKey(key)) {
      itemsMap[key] = item;
      box.put(key, _toJson(item));
      _controller?.add(itemsMap.values.toList());
    }
  }

  Future<LinkedHashMap<String, T>> _getItemsMap() async {
    if (_itemsMap != null) {
      return _itemsMap ?? LinkedHashMap();
    }
    final box = await _boxFuture;
    _itemsMap = LinkedHashMap();
    for (String key in box.keys) {
      print('Key');
      print(key);
      final item = box.get(key);
      if (item == null) continue;
      _itemsMap![key] = _fromJson((item as Map).cast<String, dynamic>());
    }
    return _itemsMap ?? LinkedHashMap();
  }
}
