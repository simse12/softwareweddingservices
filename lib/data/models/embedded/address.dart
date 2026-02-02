import 'package:isar/isar.dart';
part 'address.g.dart';


@embedded

class Address {
  String? label;
  String? fullAddress;
  String? googleMapsLink;
  Address({this.label, this.fullAddress, this.googleMapsLink});
}