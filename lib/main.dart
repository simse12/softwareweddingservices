import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

// Import dei tuoi file
import 'data/models/models.dart';
import 'data/repositories/wedding_repository.dart';
import 'viewmodels/wedding_vm.dart';
import 'views/dashboards/wedding_dashboard.dart'; // Assicurati che il percorso sia corretto

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();

  final isar = await Isar.open(
    [
      WeddingEventSchema,
      QuoteTemplateSchema,
      CalendarSyncModelSchema,
      AppSettingsSchema
    ],
    directory: dir.path,
  );

  runApp(
    MultiProvider(
      providers: [
        Provider<WeddingRepository>(
          create: (_) => WeddingRepository(isar),
        ),
        ChangeNotifierProvider<WeddingViewModel>(
          create: (context) => WeddingViewModel(
            context.read<WeddingRepository>(),
          )..loadWeddings(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // Rimosso il 'required' errato dal costruttore
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wedding Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // In futuro qui forzeremo il font per dislessia se attivo nelle impostazioni
      ),
      // Pulito: punta solo alla Dashboard
      home: const WeddingDashboard(),
    );
  }
}