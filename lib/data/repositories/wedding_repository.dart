import 'package:isar/isar.dart';
import '../models/models.dart';

class WeddingRepository {
  final Isar isar;

  WeddingRepository(this.isar);

  // --- SCRITTURA ---

  /// Salva o aggiorna un matrimonio.
  /// Grazie a Isar, se l'ID esiste già, lo aggiorna, altrimenti lo crea.
  Future<void> saveWedding(WeddingEvent wedding) async {
    await isar.writeTxn(() async {
      await isar.weddingEvents.put(wedding);
    });
  }

  /// Elimina un matrimonio (operazione distruttiva)
  Future<void> deleteWedding(int id) async {
    await isar.writeTxn(() async {
      await isar.weddingEvents.delete(id);
    });
  }

  // --- LETTURA ---

  /// Recupera tutti i matrimoni ordinati per data (dal più recente)
  Future<List<WeddingEvent>> getAllWeddings() async {
    return await isar.weddingEvents.where().sortByEventDateDesc().findAll();
  }

  /// Recupera i matrimoni in base allo stato (es. tutti i "Lead" o tutti i "Confirmed")
  Future<List<WeddingEvent>> getWeddingsByStatus(EventStatus status) async {
    return await isar.weddingEvents.filter().statusEqualTo(status).findAll();
  }

  /// Cerca matrimoni per nome degli sposi (utile per la barra di ricerca)
  Future<List<WeddingEvent>> searchWeddings(String query) async {
    final all = await getAllWeddings();
    if (query.isEmpty) return all;

    final search = query.toLowerCase();

    return all.where((wedding) {
      // Isar ha generato partnerOne e partnerTwo direttamente in WeddingEvent
      final p1Name = wedding.partnerOne?.name?.toLowerCase() ?? '';
      final p1Surname = wedding.partnerOne?.surname?.toLowerCase() ?? '';
      final p2Name = wedding.partnerTwo?.name?.toLowerCase() ?? '';
      final p2Surname = wedding.partnerTwo?.surname?.toLowerCase() ?? '';

      return p1Name.contains(search) ||
          p1Surname.contains(search) ||
          p2Name.contains(search) ||
          p2Surname.contains(search);
    }).toList();
  }
}