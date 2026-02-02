import 'package:isar/isar.dart';
part 'timeline_step.g.dart';

@embedded
class TimelineStep {
  DateTime? time;
  String? activity;
  String? locationName;
  String? contactPerson;
  String? phoneNumber;
  bool isDone = false;
  TimelineStep({this.time, this.activity, this.locationName, this.contactPerson, this.phoneNumber, this.isDone = false});
}
