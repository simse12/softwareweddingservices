import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'dart:developer' as dev;
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

  // Dati temporanei per il modulo d'inserimento (Form)
  List<ServiceItem> _tempServices = [];
  List<ServiceItem> get tempServices => _tempServices;

  List<Colleague> _tempStaff = [];
  List<Colleague> get tempStaff => _tempStaff;

  double _tempExtraCosts = 0.0;
  double get tempExtraCosts => _tempExtraCosts;

  double _tempDiscount = 0.0;
  double get tempDiscount => _tempDiscount;

  double _tempDeposit = 0.0;
  double get tempDeposit => _tempDeposit;

  int? _editingId;
  // Getter per capire se siamo in modalità modifica o creazione
  bool get isEditing => _editingId != null;
  int? get tempEditingId => _editingId;

  final double _ivaRate = 0.22; // Aliquota fissa al 22% come richiesto

  // --- CARICAMENTO E PREPARAZIONE DATI ---

  void prepareForEdit(WeddingEvent wedding) {
    _editingId = wedding.id; // Salva l'ID per l'aggiornamento

    // Popola i dati temporanei con i valori attuali dell'evento
    _tempServices = List.from(wedding.services);
    _tempStaff = List.from(wedding.staff);
    _tempExtraCosts = wedding.extraCosts;
    _tempDiscount = wedding.discount;
    _tempDeposit = wedding.deposit;

    notifyListeners();
  }

  Future<void> loadWeddings() async {
    _isLoading = true;
    notifyListeners();

    try {
      _weddings = await _repository.getAllWeddings();
      dev.log('✅ Matrimoni caricati: ${_weddings.length}', name: 'WeddingVM');
    } catch (e) {
      dev.log('❌ Errore durante il caricamento: $e',
          name: 'WeddingVM', error: e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // --- LOGICA ECONOMICA DASHBOARD ---
  double get totalRevenue =>
      _weddings.fold(0.0, (sum, w) => sum + w.totalPrice);
  double get totalPending =>
      _weddings.fold(0.0, (sum, w) => sum + w.balanceDue);
  double get totalNetProfit =>
      _weddings.fold(0.0, (sum, w) => sum + w.profitMargin);
  int get leadCount =>
      _weddings.where((w) => w.status == EventStatus.lead).length;

  // --- GESTIONE DATI TEMPORANEI (FORM) ---
  double get tempTotalServices =>
      _tempServices.fold(0.0, (sum, item) => sum + item.price);
  double get tempTaxable =>
      (tempTotalServices + _tempExtraCosts) - _tempDiscount;
  double get tempIvaAmount => tempTaxable * _ivaRate;
  double get tempTotalFinal => tempTaxable + tempIvaAmount;
  double get tempBalanceDue => tempTotalFinal - _tempDeposit;

  void setExtraCosts(double value) {
    _tempExtraCosts = value;
    notifyListeners();
  }

  void setDiscount(double value) {
    _tempDiscount = value;
    notifyListeners();
  }

  void setDeposit(double value) {
    _tempDeposit = value;
    notifyListeners();
  }

  void addServiceToTemp(String name, double price, ServiceType type) {
    _tempServices.add(ServiceItem(name: name, price: price, type: type));
    notifyListeners();
  }

  void removeServiceFromTemp(int index) {
    if (index >= 0 && index < _tempServices.length) {
      _tempServices.removeAt(index);
      notifyListeners();
    }
  }

  void addStaffToTemp(String name, String role, double cost) {
    _tempStaff.add(Colleague(name: name, role: role, cost: cost));
    notifyListeners();
  }

  void clearTempData() {
    _editingId = null;
    _tempServices = [];
    _tempStaff = [];
    _tempExtraCosts = 0.0;
    _tempDiscount = 0.0;
    _tempDeposit = 0.0;
    dev.log('🧹 Dati temporanei resettati', name: 'WeddingVM');
  }

  // --- AZIONI DATABASE (UNIFICATE) ---
  Future<bool> saveWedding({
    required String p1Name,
    required String p1Surname,
    required String p2Name,
    required String p2Surname,
    required DateTime date,
    String notes = '',
  }) async {
    try {
      final wedding = WeddingEvent(eventDate: date)
        ..id = _editingId ?? Isar.autoIncrement
        ..partnerOne = Partner(name: p1Name, surname: p1Surname)
        ..partnerTwo = Partner(name: p2Name, surname: p2Surname)
        ..status = EventStatus.lead
        ..services = List.from(_tempServices)
        ..staff = List.from(_tempStaff)
        ..extraCosts = _tempExtraCosts
        ..discount = _tempDiscount
        ..deposit = _tempDeposit
        ..ivaRate = _ivaRate
        ..internalNotes = notes;

      await _repository.saveWedding(wedding);

      dev.log('🎉 Operazione completata con successo', name: 'WeddingVM');
      clearTempData();
      await loadWeddings();
      return true;
    } catch (e) {
      dev.log('❌ Errore durante il salvataggio: $e', name: 'WeddingVM');
      return false;
    }
  }

  Future<void> deleteWedding(int id) async {
    try {
      await _repository.deleteWedding(id);
      dev.log('🗑️ Matrimonio eliminato: $id', name: 'WeddingVM');
      await loadWeddings();
    } catch (e) {
      dev.log('❌ Errore eliminazione: $e', name: 'WeddingVM');
    }
  }
}
