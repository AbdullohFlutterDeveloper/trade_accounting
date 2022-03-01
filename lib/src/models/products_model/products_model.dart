import 'package:hive/hive.dart';
part 'products_model.g.dart';

@HiveType(typeId: 1)
class ProductsModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String price;

  ProductsModel({
    required this.name,
    required this.price,
  });
}
