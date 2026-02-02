import 'package:isar/isar.dart';
import '../enum/alert_trigger.dart';

part 'calendar_alert.g.dart';


@embedded
class CalendarAlert {
  String? title;
  String? description;
  int? leadTimeMinutes; // Isar non supporta Duration, usiamo minuti
  @enumerated
  AlertTrigger trigger = AlertTrigger.beforeEvent;
  bool isSync = false;
  CalendarAlert({this.title, this.description, this.leadTimeMinutes, this.trigger = AlertTrigger.beforeEvent, this.isSync = false});
}