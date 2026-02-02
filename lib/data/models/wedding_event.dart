import 'package:isar/isar.dart';
import 'enum/event_status.dart';
import 'embedded/partner.dart';
import 'embedded/address.dart';
import 'embedded/service_item.dart';
import 'embedded/colleague.dart';
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

  // Economia e Contabilità
  double discount;
  double deposit;
  String internalNotes;

  // Campi per la gestione fiscale e costi vivi
  double extraCosts; // Spese extra (trasferte, materiali, stampe, ecc.)
  double ivaRate; // Aliquota IVA espressa in decimale (es. 0.22 per 22%)

  WeddingEvent({
    required this.eventDate,
    this.status = EventStatus.lead,
    this.discount = 0.0,
    this.deposit = 0.0,
    this.internalNotes = '',
    this.extraCosts = 0.0,
    this.ivaRate = 0.22,
  });

  // --- LOGICA DI CALCOLO (Getters non salvati su DB) ---

  String get coupleDisplayName =>
      "${partnerOne?.name ?? ''} & ${partnerTwo?.name ?? ''}";

  // Somma dei soli servizi inseriti
  double get totalServices =>
      services.fold(0.0, (sum, item) => sum + item.price);

  // Imponibile: (Servizi + Spese Extra) - Sconto
  double get totalTaxable => (totalServices + extraCosts) - discount;

  // Calcolo dell'IVA sull'imponibile
  double get ivaAmount => totalTaxable * ivaRate;

  // Prezzo Totale Lordo (quello che il cliente deve pagare effettivamente)
  double get totalPrice => totalTaxable + ivaAmount;

  // Saldo rimanente da pagare
  double get balanceDue => totalPrice - deposit;

  // Margine di profitto reale:
  // (Totale Lordo - IVA) - Costi totali dello staff
  double get profitMargin {
    double totalStaffCost = staff.fold(0.0, (sum, person) => sum + person.cost);
    return (totalPrice - ivaAmount) - totalStaffCost;
  }

  // Avanzamento del workflow in percentuale
  double get workflowProgress {
    if (workflow.isEmpty) return 0.0;
    return workflow.where((t) => t.isCompleted).length / workflow.length;
  }

  // Helper per i colori di Google Calendar in base allo stato
  int get calendarColorId {
    switch (status) {
      case EventStatus.lead:
        return 5; // Grigio/Giallo
      case EventStatus.negotiation:
        return 6; // Arancio
      case EventStatus.confirmed:
        return 10; // Verde
      case EventStatus.editing:
        return 9; // Blu/Ciano
      case EventStatus.delivered:
        return 8; // Grafite
      default:
        return 1; // Lavanda
    }
  }
}
