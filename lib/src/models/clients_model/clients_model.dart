import 'package:hive/hive.dart';
part 'clients_model.g.dart';

@HiveType(typeId: 0)
class ClientsModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String price;

  ClientsModel({
    required this.name,
    required this.price,
  });
}
