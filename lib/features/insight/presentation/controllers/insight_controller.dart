import 'package:get/get.dart';

class InsightController extends GetxController {
  final int totalDays = 365;
  final List<int> activeDays = [245, 246, 247, 248, 249, 250, 251, 252,
    253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266];

  RxBool isActive = false.obs;

}