import 'package:isar/isar.dart';
import '../enum/task_category.dart';


part 'task_checklist.g.dart';
@embedded
class TaskChecklist {
  String? title;
  @enumerated
  TaskCategory category = TaskCategory.editing;
  bool isCompleted = false;
  DateTime? deadline;
  TaskChecklist({this.title, this.category = TaskCategory.editing, this.isCompleted = false, this.deadline});
}