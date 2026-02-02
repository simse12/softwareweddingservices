import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/wedding_vm.dart';
import '../../data/models/enum/service_type.dart';

class AddWeddingPage extends StatefulWidget {
  const AddWeddingPage({super.key});

  @override
  State<AddWeddingPage> createState() => _AddWeddingPageState();
}

class _AddWeddingPageState extends State<AddWeddingPage> {
  final _formKey = GlobalKey<FormState>();

  // Controller per i testi
  final _p1NameController = TextEditingController();
  final _p1SurnameController = TextEditingController();
  final _p2NameController = TextEditingController();
  final _p2SurnameController = TextEditingController();

  // Controller per i valori economici
  final _discountController = TextEditingController(text: '0');
  final _depositController = TextEditingController(text: '0');
  final _extraCostsController = TextEditingController(text: '0');

  DateTime _selectedDate = DateTime.now().add(const Duration(days: 30));

  @override
  void dispose() {
    _p1NameController.dispose();
    _p1SurnameController.dispose();
    _p2NameController.dispose();
    _p2SurnameController.dispose();
    _discountController.dispose();
    _depositController.dispose();
    _extraCostsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<WeddingViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuovo Contratto'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            vm.clearTempData();
            Navigator.pop(context);
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            _buildSectionTitle("Informazioni Sposi"),
            _buildNameFields(
                _p1NameController, _p1SurnameController, "Partner 1"),
            const SizedBox(height: 16),
            _buildNameFields(
                _p2NameController, _p2SurnameController, "Partner 2"),

            const Divider(height: 40),

            _buildSectionTitle("Data dell'Evento"),
            ListTile(
              tileColor: Colors.grey[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading:
                  const Icon(Icons.calendar_month, color: Colors.deepPurple),
              title: Text(
                  "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}"),
              onTap: _selectDate,
            ),

            const Divider(height: 40),

            _buildSectionTitle("Servizi Inclusi"),
            _buildServiceButtons(vm),

            ...vm.tempServices.asMap().entries.map((entry) {
              return Card(
                child: ListTile(
                  title: Text(entry.value.name ?? ''),
                  subtitle: Text("€ ${entry.value.price}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline,
                        color: Colors.red),
                    onPressed: () => vm.removeServiceFromTemp(entry.key),
                  ),
                ),
              );
            }),

            const Divider(height: 40),
            _buildSectionTitle("Dettagli Economici (Extra, Sconti, Acconti)"),

            // Sezione Input Economici
            _buildNumericField(
              controller: _extraCostsController,
              label: "Spese Extra (Trasferte, Materiali...)",
              icon: Icons.add_business,
              onChanged: (val) => vm.setExtraCosts(double.tryParse(val) ?? 0),
            ),
            const SizedBox(height: 16),
            _buildNumericField(
              controller: _discountController,
              label: "Sconto (€)",
              icon: Icons.money_off,
              onChanged: (val) => vm.setDiscount(double.tryParse(val) ?? 0),
            ),
            const SizedBox(height: 16),
            _buildNumericField(
              controller: _depositController,
              label: "Acconto Ricevuto (€)",
              icon: Icons.payments,
              onChanged: (val) => vm.setDeposit(double.tryParse(val) ?? 0),
            ),

            const SizedBox(height: 30),

            // Box Totale aggiornato con tempTotalFinal
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.deepPurple.shade200),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("TOTALE PREVENTIVO (IVA Incl.)",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("€ ${vm.tempTotalFinal.toStringAsFixed(2)}",
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple)),
                ],
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () => _handleSave(vm),
              child: const Text("CONFERMA E SALVA",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

  // --- WIDGET HELPER ---

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
    );
  }

  Widget _buildNumericField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required Function(String) onChanged,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.deepPurple),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onChanged: onChanged,
    );
  }

  Widget _buildNameFields(
      TextEditingController n, TextEditingController s, String hint) {
    return Row(
      children: [
        Expanded(
            child: TextFormField(
                controller: n,
                decoration: InputDecoration(labelText: 'Nome $hint'))),
        const SizedBox(width: 10),
        Expanded(
            child: TextFormField(
                controller: s,
                decoration: InputDecoration(labelText: 'Cognome $hint'))),
      ],
    );
  }

  Widget _buildServiceButtons(WeddingViewModel vm) {
    return Wrap(
      spacing: 8,
      children: [
        ActionChip(
            label: const Text("+ Foto"),
            onPressed: () =>
                vm.addServiceToTemp("Servizio Foto", 1500, ServiceType.photo)),
        ActionChip(
            label: const Text("+ Video"),
            onPressed: () =>
                vm.addServiceToTemp("Servizio Video", 1200, ServiceType.video)),
        ActionChip(
            label: const Text("+ Drone"),
            onPressed: () =>
                vm.addServiceToTemp("Riprese Drone", 350, ServiceType.drone)),
      ],
    );
  }

  // --- LOGICA ---

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (picked != null) setState(() => _selectedDate = picked);
  }

  void _handleSave(WeddingViewModel vm) async {
    if (_formKey.currentState!.validate()) {
      final success = await vm.saveWedding(
        p1Name: _p1NameController.text,
        p1Surname: _p1SurnameController.text,
        p2Name: _p2NameController.text,
        p2Surname: _p2SurnameController.text,
        date: _selectedDate,
      );

      if (success && mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Matrimonio salvato correttamente!")),
        );
      }
    }
  }
}
