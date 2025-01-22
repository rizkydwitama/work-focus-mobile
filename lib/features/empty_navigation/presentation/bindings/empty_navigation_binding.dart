import 'package:get/get.dart';
import 'package:work_focus_mobile/features/empty_navigation/presentation/controllers/empty_navigation_controller.dart';

class EmptyNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyNavigationController>(() => EmptyNavigationController());
  }
}