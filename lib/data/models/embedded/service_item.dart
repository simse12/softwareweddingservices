import 'package:isar/isar.dart';
import '../enum/service_type.dart';

part 'service_item.g.dart';


@embedded
class ServiceItem {
  String? name;
  @enumerated
  ServiceType type = ServiceType.extra;
  double price = 0.0;
  ServiceItem({this.name, this.type = ServiceType.extra, this.price = 0.0});
}