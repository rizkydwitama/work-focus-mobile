import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/core/theme/app_colors.dart';
import 'package:work_focus_mobile/features/auth/presentation/controllers/login_controller.dart';

import '../../../../routes/app_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 94, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Work Focus',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 4,),
            Text(
              'Track your activity work',
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
                      ? AppColors.blackColor
                      : AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide.none
                  ),
                  label: Text(
                    'Login',
                    style: TextStyle(
                        color: controller.currentIndex.value == 0
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Chip(
                  side: BorderSide.none,
                  backgroundColor: controller.currentIndex.value == 1
                      ? AppColors.blackColor
                      : AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide.none
                  ),
                  label: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: controller.currentIndex.value == 1
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),),
            const SizedBox(height: 16,),
            Text(
              'Email',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              cursorColor: AppColors.blackColor,
              style: TextStyle(
                  color: AppColors.blackColor,
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
                        color: AppColors.brightGreyColor,
                        width: 1.0,
                        strokeAlign: BorderSide.strokeAlignInside
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.blackColor,
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
              'Password',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              cursorColor: AppColors.blackColor,
              obscureText: true,
              obscuringCharacter: '●',
              style: TextStyle(
                  color: AppColors.blackColor,
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
                        color: AppColors.brightGreyColor,
                        width: 1.0,
                        strokeAlign: BorderSide.strokeAlignInside
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.blackColor,
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
                onTap: () {},
                child: Text(
                  'Forgot Password?',
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
                      backgroundColor: AppColors.blackColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                      )
                  ),
                  onPressed: () {
                    Get.toNamed(AppRoutes.bottomNavigationBar);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor
                    ),
                  )
              ),
            ),
            const SizedBox(height: 44,),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
                    children: [
                      TextSpan(
                          text: 'Sign Up',
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
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
