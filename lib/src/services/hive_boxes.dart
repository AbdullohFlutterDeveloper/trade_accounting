import 'package:hive_flutter/hive_flutter.dart';
import 'package:trade_accounting/src/models/clients_model/clients_model.dart';
import 'package:trade_accounting/src/models/products_model/products_model.dart';

class HiveBoxes {
  static Box<ClientsModel> getClients() => Hive.box<ClientsModel>("clients");

  static Box<ProductsModel> getProducts() => Hive.box<ProductsModel>("products");
}