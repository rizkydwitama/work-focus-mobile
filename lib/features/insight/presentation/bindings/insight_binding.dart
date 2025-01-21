import 'package:get/get.dart';
import 'package:work_focus_mobile/features/insight/presentation/controllers/insight_controller.dart';

class InsightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InsightController>(() => InsightController());
  }
}