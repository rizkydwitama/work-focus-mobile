import 'package:get/get.dart';
import 'package:work_focus_mobile/features/analytic/presentation/controllers/analytic_controller.dart';
import 'package:work_focus_mobile/features/bottom_navigation_bar/presentation/controllers/bottom_navigation_bar_controller.dart';
import 'package:work_focus_mobile/features/dashboard/presentation/controllers/dashboard_controller.dart';
import 'package:work_focus_mobile/features/profile/presentation/controllers/profile_controller.dart';
import 'package:work_focus_mobile/features/work_log/presentation/controllers/work_log_controller.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarController>(() => BottomNavigationBarController());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<WorkLogController>(() => WorkLogController());
    Get.lazyPut<AnalyticController>(() => AnalyticController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}