import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/features/empty_navigation/presentation/controllers/empty_navigation_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';

class EmptyNavigationPage extends StatelessWidget {
  const EmptyNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final EmptyNavigationController controller = Get.find();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final localization = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: isDarkMode
          ? AppColors.blackColor
          : AppColors.whiteColor,
      appBar: AppBar(
          backgroundColor: isDarkMode
              ? AppColors.blackColor
              : AppColors.whiteColor,
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
          title: Text(
            localization.empty_navigation,
            style: TextStyle(
                fontSize: 16,
                color: isDarkMode
                    ? AppColors.whiteColor
                    : AppColors.blackColor,
                fontWeight: FontWeight.w600
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: isDarkMode
                    ? AppColors.whiteColor
                    : AppColors.blackColor,
              )
          )
      ),
      body: Column(

      ),
    );
  }
}
