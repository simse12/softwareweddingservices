import 'package:isar/isar.dart';
part 'collegue.g.dart';

@embedded
class Colleague {
  String? name;
  String? role;
  double cost = 0.0;
  Colleague({this.name, this.role, this.cost = 0.0});
}