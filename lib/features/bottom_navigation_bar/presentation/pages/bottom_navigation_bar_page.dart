import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/features/analytic/presentation/pages/analytic_page.dart';
import 'package:work_focus_mobile/features/bottom_navigation_bar/presentation/controllers/bottom_navigation_bar_controller.dart';
import 'package:work_focus_mobile/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:work_focus_mobile/features/profile/presentation/pages/profile_page.dart';
import 'package:work_focus_mobile/features/work_log/presentation/pages/work_log_page.dart';

import '../../../../core/theme/app_colors.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarController controller = Get.find();
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: controller.currentIndex.value,
        children: const [
          DashboardPage(),
          WorkLogPage(),
          AnalyticPage(),
          ProfilePage()
        ],
      ),),
      bottomNavigationBar: Container(
        height: 86,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(
            color: AppColors.blackColor.withValues(alpha: 0.08)
          )
        ),
        child: Obx(() => BottomNavigationBar(
          onTap: (value) {
            controller.currentIndex.value = value;
          },
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
              color: AppColors.blackColor,
              fontSize: 12,
              fontWeight: FontWeight.w400
          ),
          unselectedLabelStyle: const TextStyle(
              color: AppColors.clayColor,
              fontSize: 12,
              fontWeight: FontWeight.w400
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.blackColor,
          unselectedItemColor: AppColors.clayColor,
          backgroundColor: AppColors.whiteColor,
          items: [
            BottomNavigationBarItem(
                icon: controller.currentIndex.value == 0?
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_dashboard_selected_black.svg',
                  ),
                )
                    :
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_dashboard_unselected.svg',
                  ),
                ),
                label: 'Dashboard'
            ),
            BottomNavigationBarItem(
                icon: controller.currentIndex.value == 1?
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_worklog_unselected.svg',
                  ),
                )
                    :
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_worklog_unselected.svg',
                  ),
                ),
                label: 'Work Log'
            ),
            BottomNavigationBarItem(
                icon: controller.currentIndex.value == 2?
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_analytic_unselected.svg',
                  ),
                )
                    :
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_analytic_unselected.svg',
                  ),
                ),
                label: 'Analytic'
            ),
            BottomNavigationBarItem(
                icon: controller.currentIndex.value == 3?
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_profile_selected_black.svg',
                  ),
                )
                    :
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/icons/icon_profile_unselected.svg',
                  ),
                ),
                label: 'Profile'
            )
          ],
        ),)
      )
    );
  }
}
