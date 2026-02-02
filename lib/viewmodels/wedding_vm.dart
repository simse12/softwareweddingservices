import 'package:flutter/material.dart';
import 'dart:developer' as dev; // Per log di debug professionali
import '../data/models/models.dart';
import '../data/repositories/wedding_repository.dart';

class WeddingViewModel extends ChangeNotifier {
  final WeddingRepository _repository;

  WeddingViewModel(this._repository);

  // --- STATO ---
  List<WeddingEvent> _weddings = [];
  List<WeddingEvent> get weddings => _weddings;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  // Dati temporanei per il modulo d'inserimento
  List<ServiceItem> _tempServices = [];
  List<ServiceItem> get tempServices => _tempServices;

  // --- CARICAMENTO DATI ---

  Future<void> loadWeddings() async {
    _isLoading = true;
    notifyListeners();

    try {
      _weddings = await _repository.getAllWeddings();
      dev.log('✅ Matrimoni caricati: ${_weddings.length}', name: 'WeddingVM');
    } catch (e) {
      dev.log('❌ Errore durante il caricamento: $e', name: 'WeddingVM', error: e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // --- LOGICA ECONOMICA (Calcoli automatici per Discalculia) ---

  double get totalRevenue => _weddings.fold(0.0, (sum, w) => sum + w.totalPrice);
  double get totalPending => _weddings.fold(0.0, (sum, w) => sum + w.balanceDue);
  int get leadCount => _weddings.where((w) => w.status == EventStatus.lead).length;

  // Calcolo dinamico per il form
  double get tempTotal => _tempServices.fold(0.0, (sum, item) => sum + (item.price));

  // --- GESTIONE SERVIZI TEMPORANEI ---

  void addServiceToTemp(String name, double price, ServiceType type) {
    _tempServices.add(ServiceItem(name: name, price: price, type: type));
    dev.log('➕ Servizio aggiunto al form: $name (€$price)', name: 'WeddingVM');
    notifyListeners();
  }

  void removeServiceFromTemp(int index) {
    if (index >= 0 && index < _tempServices.length) {
      final removed = _tempServices.removeAt(index);
      dev.log('➖ Servizio rimosso: ${removed.name}', name: 'WeddingVM');
      notifyListeners();
    }
  }

  void clearTempData() {
    _tempServices = [];
    dev.log('🧹 Dati temporanei resettati', name: 'WeddingVM');
  }

  // --- AZIONI DATABASE ---

  /// Salva un matrimonio reale completo di servizi
  Future<bool> createWedding({
    required String p1Name,
    required String p1Surname,
    required String p2Name,
    required String p2Surname,
    required DateTime date,
  }) async {
    try {
      final newWedding = WeddingEvent(eventDate: date)
        ..partnerOne = Partner(name: p1Name, surname: p1Surname)
        ..partnerTwo = Partner(name: p2Name, surname: p2Surname)
        ..status = EventStatus.lead
        ..services = List.from(_tempServices); // Copia i servizi dal form

      await _repository.saveWedding(newWedding);

      dev.log('🎉 Matrimonio salvato con successo: $p1Name & $p2Name', name: 'WeddingVM');

      clearTempData(); // Pulizia dopo il successo
      await loadWeddings(); // Ricarica la lista aggiornata
      return true;
    } catch (e) {
      dev.log('❌ Errore durante il salvataggio: $e', name: 'WeddingVM', error: e);
      return false;
    }
  }

  /// Elimina un matrimonio
  Future<void> deleteWedding(int id) async {
    try {
      await _repository.deleteWedding(id);
      dev.log('🗑️ Matrimonio eliminato: ID $id', name: 'WeddingVM');
      await loadWeddings();
    } catch (e) {
      dev.log('❌ Errore durante l\'eliminazione: $e', name: 'WeddingVM');
    }
  }

  // Azione rapida per debug
  Future<void> addTestWedding() async {
    dev.log('🧪 Creazione matrimonio di test...', name: 'WeddingVM');
    await createWedding(
      p1Name: "Test", p1Surname: "Sposo",
      p2Name: "Test", p2Surname: "Sposa",
      date: DateTime.now().add(const Duration(days: 30)),
    );
  }
}