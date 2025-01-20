import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:work_focus_mobile/features/profile/presentation/controllers/profile_controller.dart';

import '../../../../core/theme/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.find();

    return Scaffold(
      backgroundColor: AppColors.secondaryWhiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: AppColors.whiteColor,
            padding: EdgeInsets.fromLTRB(16, 68, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor
                  ),
                ),
                const SizedBox(height: 4,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 51,
                      height: 49,
                      decoration: BoxDecoration(
                        color: AppColors.blackColor,
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text(
                          'SA',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteColor
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sam',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor
                          ),
                        ),
                        Text(
                          'Member Since 21 August 2024',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryGreyColor
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              'General',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            width: Get.width,
            padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
            margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: AppColors.transparentColor,
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.brightGreyColor,
                          width: 1
                        )
                      )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/icons/icon_general_profile.svg'
                        ),
                        const SizedBox(width: 16,),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: AppColors.transparentColor,
                        border: Border(
                            bottom: BorderSide(
                                color: AppColors.brightGreyColor,
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/images/icons/icon_general_data.svg'
                        ),
                        const SizedBox(width: 16,),
                        Text(
                          'Data & Privacy',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: AppColors.transparentColor,
                        border: Border(
                            bottom: BorderSide(
                                color: AppColors.brightGreyColor,
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/images/icons/icon_general_subscription.svg'
                        ),
                        const SizedBox(width: 16,),
                        Text(
                          'Subscription',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: AppColors.transparentColor,
                        border: Border(
                            bottom: BorderSide(
                                color: AppColors.brightGreyColor,
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/images/icons/icon_general_password.svg'
                        ),
                        const SizedBox(width: 16,),
                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: AppColors.transparentColor,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/images/icons/icon_general_signout.svg'
                        ),
                        const SizedBox(width: 16,),
                        Text(
                          'Sign Out',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
