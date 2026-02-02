import 'package:isar/isar.dart';
import '../models/app_settings.dart';

class SettingsRepository {
  final Isar isar;

  SettingsRepository(this.isar);

  Future<AppSettings> getSettings() async {
    // Recupera le prime impostazioni trovate o ne crea di nuove se non esistono
    final settings = await isar.appSettings.where().findFirst();
    return settings ?? AppSettings();
  }

  Future<void> updateSettings(AppSettings settings) async {
    await isar.writeTxn(() async {
      await isar.appSettings.put(settings);
    });
  }
}