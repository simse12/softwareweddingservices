import 'package:isar/isar.dart';
import 'enum/event_status.dart';
import 'embedded/partner.dart';
import 'embedded/address.dart';
import 'embedded/service_item.dart';
import 'embedded/collegue.dart';
import 'embedded/calendar_alert.dart';
import 'embedded/timeline_step.dart';
import 'embedded/task_checklist.dart';


part 'wedding_event.g.dart';

@collection
class WeddingEvent {
  Id id = Isar.autoIncrement;

  // Partner e Cliente
  Partner? partnerOne;
  Partner? partnerTwo;
  String? finalDeliveryAddress;

  @Index()
  DateTime eventDate;

  @enumerated
  EventStatus status;

  // Liste Embedded
  List<ServiceItem> services = [];
  List<Address> locations = [];
  List<Colleague> staff = [];
  List<CalendarAlert> customAlerts = [];
  List<TimelineStep> timeline = [];
  List<TaskChecklist> workflow = [];

  // Economia
  double discount;
  double deposit;
  String internalNotes;

  WeddingEvent({
    required this.eventDate,
    this.status = EventStatus.lead,
    this.discount = 0.0,
    this.deposit = 0.0,
    this.internalNotes = '',
  });

  // --- LOGICA DI CALCOLO (Getters non salvati su DB) ---

  String get coupleDisplayName => "${partnerOne?.name ?? ''} & ${partnerTwo?.name ?? ''}";

  double get totalServices => services.fold(0.0, (sum, item) => sum + item.price);
  double get totalPrice => totalServices - discount;
  double get balanceDue => totalPrice - deposit;

  double get profitMargin {
    double staffCost = staff.fold(0.0, (sum, person) => sum + person.cost);
    return totalPrice - staffCost;
  }

  double get workflowProgress {
    if (workflow.isEmpty) return 0.0;
    return workflow.where((t) => t.isCompleted).length / workflow.length;
  }

  // Google Calendar Helper
  int get calendarColorId {
    switch (status) {
      case EventStatus.lead: return 5;
      case EventStatus.negotiation: return 6;
      case EventStatus.confirmed: return 10;
      case EventStatus.editing: return 9;
      case EventStatus.delivered: return 8;
      default: return 1;
    }
  }
}