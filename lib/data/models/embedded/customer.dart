import 'package:isar/isar.dart';
import 'partner.dart';
part 'customer.g.dart';

@embedded
class Customer {
  Partner? partnerOne;
  Partner? partnerTwo;
  String? finalDeliveryAddress;

  Customer({this.partnerOne, this.partnerTwo, this.finalDeliveryAddress});

  String get coupleDisplayName => "${partnerOne?.name ?? ''} & ${partnerTwo?.name ?? ''}";
}