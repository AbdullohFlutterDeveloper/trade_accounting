import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provied;


class HiveInitialize {
  static init() async {
    Directory hiveDirectory =
        await path_provied.getApplicationDocumentsDirectory();
    Hive.init(hiveDirectory.path);
    // Hive.registerAdapter(FoodsModelAdapter());
    // await Hive.openBox<FoodsModel>("foods");
  }
}