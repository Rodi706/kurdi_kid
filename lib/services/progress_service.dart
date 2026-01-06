import 'package:shared_preferences/shared_preferences.dart';

class ProgressService {
  static const _keyUnlockedStage = 'unlocked_stage';

  // أول مرة: Stage 1 مفتوحة
  static Future<int> getUnlockedStage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyUnlockedStage) ?? 1;
  }

  static Future<void> setUnlockedStage(int stage) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyUnlockedStage, stage);
  }

  // لما تخلص Stage معيّنة: افتح اللي بعدها
  static Future<void> completeStage(int stage, int maxStages) async {
    final current = await getUnlockedStage();
    final next = (stage + 1).clamp(1, maxStages);
    if (stage >= current && stage < maxStages) {
      await setUnlockedStage(next);
    }
  }

  // (اختياري) reset progress
  static Future<void> reset() async => setUnlockedStage(1);
}
