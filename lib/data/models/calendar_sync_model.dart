import 'package:isar/isar.dart';
part 'calendar_sync_model.g.dart';

@collection
class CalendarSyncModel {
  Id id = Isar.autoIncrement;
  @Index(unique: true)
  String? weddingId;
  String? googleEventId;
  DateTime? lastSync;

  CalendarSyncModel({this.weddingId, this.googleEventId, this.lastSync});
}