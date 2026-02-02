import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wedding_flow/views/details/add_wedding_page.dart';
import '../../viewmodels/wedding_vm.dart';
import '../../data/models/models.dart';
import 'package:intl/intl.dart';

class WeddingDashboard extends StatelessWidget {
  const WeddingDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Ascoltiamo il ViewModel
    final vm = context.watch<WeddingViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wedding Flow 📸', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: vm.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
        children: [
          // --- SEZIONE SOMMARIO ECONOMICO ---
          _buildSummaryHeader(vm),

          // --- LISTA MATRIMONI ---
          Expanded(
            child: vm.weddings.isEmpty
                ? _buildEmptyState(context, vm)
                : ListView.builder(
              itemCount: vm.weddings.length,
              itemBuilder: (context, index) {
                final wedding = vm.weddings[index];
                return _buildWeddingCard(context, wedding);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddWeddingPage()),
          );
        },
        label: const Text('Nuovo Matrimonio'),
        icon: const Icon(Icons.add),
      ),
    );
  }

  // Header con i calcoli automatici (Zero sforzo mentale)
  Widget _buildSummaryHeader(WeddingViewModel vm) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem("Fatturato", "€${vm.totalRevenue.toStringAsFixed(0)}", Colors.blue),
          _buildStatItem("Da Incassare", "€${vm.totalPending.toStringAsFixed(0)}", Colors.red),
          _buildStatItem("Contatti", "${vm.leadCount}", Colors.orange),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color)),
      ],
    );
  }

  // La singola riga del matrimonio
  Widget _buildWeddingCard(BuildContext context, WeddingEvent wedding) {
    final dateStr = DateFormat('dd MMM yyyy').format(wedding.eventDate);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getStatusColor(wedding.status),
          child: const Icon(Icons.event, color: Colors.white),
        ),
        title: Text(
          wedding.coupleDisplayName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text("Data: $dateStr"),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Qui andremo alla pagina di dettaglio
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, WeddingViewModel vm) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.camera_alt_outlined, size: 80, color: Colors.grey[400]),
          const SizedBox(height: 16),
          const Text("Nessun matrimonio salvato", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  Color _getStatusColor(EventStatus status) {
    switch (status) {
      case EventStatus.lead: return Colors.orange;
      case EventStatus.confirmed: return Colors.green;
      case EventStatus.delivered: return Colors.grey;
      default: return Colors.blue;
    }
  }
}