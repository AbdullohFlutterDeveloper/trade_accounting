import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provied;
import 'package:trade_accounting/src/core/exported_packages.dart';

class HiveInitialize {
  static init() async {
    Directory hiveDirectory =
        await path_provied.getApplicationDocumentsDirectory();
    
    Hive.init(hiveDirectory.path);

    Hive.registerAdapter(ClientsModelAdapter());
    await Hive.openBox<ClientsModel>("clients");

    Hive.registerAdapter(ProductsModelAdapter());
    await Hive.openBox<ProductsModel>("products");
  }
}