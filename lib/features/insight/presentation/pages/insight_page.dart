import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/features/insight/presentation/controllers/insight_controller.dart';

import '../../../../core/theme/app_colors.dart';

class InsightPage extends StatelessWidget {
  const InsightPage({super.key});

  @override
  Widget build(BuildContext context) {
    final InsightController controller = Get.find();

    return Scaffold(
      backgroundColor: AppColors.blueBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.blueBackgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Habits',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.blackColor,
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
            )
        )
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.fromLTRB(16, 12, 16, 32),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadiusDirectional.vertical(
                top: Radius.circular(12)
            ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.gainsboroColor
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Center(
                child: Text(
                  'Insight & Data',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(height: 28,),
              Center(
                child: Text(
                  '100%',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Text(
                'Work Streak',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor
                ),
              ),
              const SizedBox(height: 16,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/images/image_work_streak.png',
                    width: 53,
                    height: 52,
                  ),
                  const SizedBox(width: 24,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Longest & Current',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryGreyColor
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '29',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Text(
                            'Days',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryGreyColor
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4,),
                      Text(
                        '28 Jul 2024 - Today',
                        style: TextStyle(
                          color: AppColors.secondaryGreyColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Yearly View',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: AppColors.blueTrackedColor
                        ),
                      ),
                      const SizedBox(width: 4.5,),
                      Text(
                        'Tracked',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(width: 16,),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: AppColors.whiteUntrackedColor
                        ),
                      ),
                      const SizedBox(width: 4.5,),
                      Text(
                        'Untracked',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Text(
                    '2024',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jan',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Feb',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Mar',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Apr',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'May',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Jun',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Jul',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Aug',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Sept',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Oct',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Nov',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                      Text(
                        'Dec',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  SizedBox(
                    width: Get.width,
                    height: 54,
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                        ),
                        itemCount: controller.totalDays,
                        itemBuilder: (context, index) {
                          controller.isActive.value = controller.activeDays
                              .contains(index + 1);
                          return  Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              color: controller.isActive.value
                                  ? AppColors.blueTrackedColor
                                  : AppColors.whiteUntrackedColor,
                            ),
                          );
                        }
                    ),
                  )
                
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
