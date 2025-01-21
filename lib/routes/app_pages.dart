import 'package:get/get.dart';
import 'package:work_focus_mobile/features/auth/presentation/bindings/login_binding.dart';
import 'package:work_focus_mobile/features/auth/presentation/pages/login_page.dart';
import 'package:work_focus_mobile/features/bottom_navigation_bar/presentation/bindings/bottom_navigation_bar_binding.dart';
import 'package:work_focus_mobile/features/bottom_navigation_bar/presentation/pages/bottom_navigation_bar_page.dart';
import 'package:work_focus_mobile/features/insight/presentation/bindings/insight_binding.dart';
import 'package:work_focus_mobile/features/insight/presentation/pages/insight_page.dart';
import 'package:work_focus_mobile/routes/app_routes.dart';

class AppPages {
  static const String initial = '/login';

  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.login,
        page: () => LoginPage(),
        binding: LoginBinding()
    ),
    GetPage(
        name: AppRoutes.bottomNavigationBar,
        page: () => BottomNavigationBarPage(),
        binding: BottomNavigationBarBinding()
    ),
    GetPage(
        name: AppRoutes.insight,
        page: () => InsightPage(),
        binding: InsightBinding()
    )
  ];
}