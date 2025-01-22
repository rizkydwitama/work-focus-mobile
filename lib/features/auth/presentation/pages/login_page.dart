import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/core/theme/app_colors.dart';
import 'package:work_focus_mobile/features/auth/presentation/controllers/login_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../routes/app_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final localization = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 94, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localization.login_title,
              style: TextStyle(
                  color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 4,),
            Text(
              localization.login_subtitle,
              style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 44,),
            Obx(() => TabBar(
              controller: controller.tabController,
              tabAlignment: TabAlignment.start,
              indicatorColor: AppColors.transparentColor,
              dividerHeight: 0.0,
              isScrollable: true,
              unselectedLabelColor: AppColors.transparentColor,
              labelColor: AppColors.transparentColor,
              indicatorPadding: EdgeInsets.zero,
              onTap: (int index) {
                controller.currentIndex.value = index;
              },
              labelPadding: EdgeInsets.only(
                  right: 8
              ),
              padding: EdgeInsets.zero,
              tabs: [
                Chip(
                  side: BorderSide.none,
                  backgroundColor: controller.currentIndex.value == 0
                      ? isDarkMode ? AppColors.whiteColor : AppColors.blackColor
                      : isDarkMode ? AppColors.blackColor : AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide.none
                  ),
                  label: Text(
                    localization.login,
                    style: TextStyle(
                        color: controller.currentIndex.value == 0
                            ? isDarkMode ? AppColors.blackColor : AppColors.whiteColor
                            : isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Chip(
                  side: BorderSide.none,
                  backgroundColor: controller.currentIndex.value == 1
                      ? isDarkMode ? AppColors.whiteColor : AppColors.blackColor
                      : isDarkMode ? AppColors.blackColor : AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide.none
                  ),
                  label: Text(
                    localization.sign_up,
                    style: TextStyle(
                        color: controller.currentIndex.value == 1
                            ? isDarkMode ? AppColors.blackColor : AppColors.whiteColor
                            : isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),),
            const SizedBox(height: 16,),
            Text(
              localization.email ,
              style: TextStyle(
                  color: isDarkMode
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              cursorColor: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
              style: TextStyle(
                  color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),
              decoration: InputDecoration(
                filled: false,
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode
                            ? AppColors.whiteColor.withValues(alpha: 0.16)
                            : AppColors.greyColor,
                        width: 1.0,
                        strokeAlign: BorderSide.strokeAlignInside
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                        width: 1.0,
                        strokeAlign: BorderSide.strokeAlignInside
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )
                ),

              ),
            ),
            const SizedBox(height: 16,),
            Text(
              localization.password,
              style: TextStyle(
                  color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              cursorColor: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
              obscureText: true,
              obscuringCharacter: '●',
              style: TextStyle(
                  color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ),
              decoration: InputDecoration(
                filled: false,
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode
                            ? AppColors.whiteColor.withValues(alpha: 0.16)
                            : AppColors.greyColor,
                        width: 1.0,
                        strokeAlign: BorderSide.strokeAlignInside
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                        width: 1.0,
                        strokeAlign: BorderSide.strokeAlignInside
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )
                ),

              ),
            ),
            const SizedBox(height: 16,),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.emptyNavigation);
                },
                child: Text(
                  localization.forgot_password,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                      )
                  ),
                  onPressed: () {
                    Get.offAllNamed(AppRoutes.bottomNavigationBar);
                  },
                  child: Text(
                    localization.login,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: isDarkMode ? AppColors.blackColor : AppColors.whiteColor
                    ),
                  )
              ),
            ),
            const SizedBox(height: 44,),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: '${localization.no_account} ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
                    children: [
                      TextSpan(
                          text: localization.sign_up,
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Get.toNamed(AppRoutes.emptyNavigation);
                          },
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                          )
                      )
                    ]
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
