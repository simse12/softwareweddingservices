import 'package:isar/isar.dart';
part 'app_settings.g.dart';

@collection
class AppSettings {
  Id id = Isar.autoIncrement;
  bool useDyslexicFont = false;
  bool highContrastMode = false;
  String language = 'it';

  // Dati studio per i preventivi
  String? studioName;
  String? vatNumber; // Partita IVA
}