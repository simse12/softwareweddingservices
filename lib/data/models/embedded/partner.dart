import 'package:isar/isar.dart';
import 'package:wedding_flow/data/models/embedded/address.dart';
part 'partner.g.dart'; // File generato unico per gli embedded

@embedded
class Partner {
  String? name;
  String? surname;
  String? phone;
  String? email;
  String? instagram;
  Address? address;

  Partner({this.name, this.surname, this.phone, this.email, this.instagram, this.address});
}