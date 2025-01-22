import '../../domain/repositories/active_day_repository.dart';

class ActiveDayRepositoryImpl implements ActiveDayRepository {
  @override
  List<int> getActiveDays() {
    return [
      245, 246, 247, 248, 249, 250, 251, 252,
      253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266
    ];
  }
}
