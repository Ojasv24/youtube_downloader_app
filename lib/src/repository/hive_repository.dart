import 'dart:convert';

import 'package:hive/hive.dart';

class HiveRepository {
  Future<int> addToBox(String boxName, Map<String, dynamic> item) async {
    final box = await Hive.openBox(boxName);
    return await box.add(jsonEncode(item));
  }

  Future<List<Map<String, dynamic>>> getAllItems(String boxName) async {
    final box = await Hive.openBox(boxName);
    final itemsMap = box.toMap();
    final keys = (itemsMap.keys.toList()..sort()).reversed;

    return keys
        .map((e) => jsonDecode(itemsMap[e]) as Map<String, dynamic>)
        .toList();
  }

  Future<void> deleteItem(String boxName, int index) async {
    final box = await Hive.openBox(boxName);
    final itemsMap = box.toMap();
    final keys = (itemsMap.keys.toList()..sort()).reversed;
    await box.delete(keys.elementAt(index));
  }
}
