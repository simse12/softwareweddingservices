import 'package:isar/isar.dart';
part 'quote_template.g.dart';

@collection
class QuoteTemplate {
  Id id = Isar.autoIncrement;
  String? headerText;
  String? legalTerms;
  String? paymentTerms;
  String? footerText;

  QuoteTemplate({this.headerText, this.legalTerms, this.paymentTerms, this.footerText});
}