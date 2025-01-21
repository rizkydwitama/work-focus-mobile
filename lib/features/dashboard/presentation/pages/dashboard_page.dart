import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/features/dashboard/presentation/controllers/dashboard_controller.dart';
import 'package:work_focus_mobile/routes/app_routes.dart';
import '../../../../core/theme/app_colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController controller = Get.find();

    return Scaffold(
      backgroundColor: AppColors.secondaryWhiteColor,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(16, 76, 16, 5),
            color: AppColors.whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SUNDAY,26 AUGUST',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w400
                  ),
                ),
                const SizedBox(height: 4,),
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 32,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  'Work Log Focus',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '564',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor
                          ),
                        ),
                        Text(
                          'Remaining',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryGreyColor
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 170,
                      height: 170,
                      child: Stack(
                        children: [
                          Transform.rotate(
                            angle: -pi/2,
                            child: PieChart(
                                PieChartData(
                                  centerSpaceRadius: 80,
                                  sectionsSpace: 0,
                                  startDegreeOffset: 215,
                                  sections: [
                                    PieChartSectionData(
                                      color: AppColors.blueChartColor,
                                      value: 21,
                                      radius: 5,
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      color: AppColors.whiteChartColor,
                                      value: 34,
                                      radius: 5,
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      color: AppColors.transparentColor,
                                      value: 15,
                                      radius: 5,
                                      showTitle: false,
                                    ),
                                  ],
                                )
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '656',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blackColor,
                                      fontSize: 32
                                  ),
                                ),
                                Text(
                                  'Working',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.secondaryGreyColor
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '1220',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor
                          ),
                        ),
                        Text(
                          'Target',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryGreyColor
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Failed',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 5,
                              decoration: BoxDecoration(
                                color: AppColors.emptyIndicatorColor
                              ),
                            ),
                            Container(
                              width: 80 * 0.7.clamp(0.1, 1.0),
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.failedIndicatorColor
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          '42 / 77 %',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Progress',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.emptyIndicatorColor
                              ),
                            ),
                            Container(
                              width: 80 * 0.5.clamp(0.1, 1.0),
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.progressIndicatorColor
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          '20 / 40 %',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Success',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.emptyIndicatorColor
                              ),
                            ),
                            Container(
                              width: 80 * 0.85.clamp(0.1, 1.0),
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.successIndicatorColor
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          '85 / 136 %',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                Obx(() => Align(
                  alignment: Alignment.center,
                  child: TabBar(
                    controller: controller.tabController,
                    indicatorColor: AppColors.transparentColor,
                    tabAlignment: TabAlignment.center,
                    dividerHeight: 0.0,
                    unselectedLabelColor: AppColors.transparentColor,
                    labelColor: AppColors.transparentColor,
                    padding: EdgeInsets.zero,
                    indicatorPadding: EdgeInsets.zero,
                    onTap: (int index) {
                      controller.currentIndex.value = index;
                    },
                    labelPadding: EdgeInsets.only(
                        right: 8
                    ),
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
                          'Worked',
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
                          'Remaining',
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
                  ),
                ),),
              ],
            ),
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: AppColors.unselectedDotColor,
                  shape: BoxShape.circle
                ),
              ),
              const SizedBox(width: 8,),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    color: AppColors.unselectedDotColor,
                    shape: BoxShape.circle
                ),
              ),
              const SizedBox(width: 8,),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    color: AppColors.selectedDotColor,
                    shape: BoxShape.circle
                ),
              )
            ],
          ),
          const SizedBox(height: 28,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.insight);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Insight & Analytics',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/images/icons/icon_arrow_forward.svg'
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 165.5,
                  height: 134,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12
                        ),
                        child: Text(
                          'Expenditure',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12
                        ),
                        child: Text(
                          '19 Aug - Now',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyColor
                          ),
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12
                        ),
                        child: SizedBox(
                          height: 17,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(show: false),
                              titlesData: FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              minX: 0,
                              maxX: ([6, 8, 7, 6, 7, 8].length - 1).toDouble(),
                              minY: [6, 8, 7, 6, 7, 8].reduce((a, b) => a < b ? a : b) - 2,
                              maxY: [6, 8, 7, 6, 7, 8].reduce((a, b) => a > b ? a : b) + 2,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: List.generate(
                                    [6, 8, 7, 6, 7, 8].length,
                                        (index) => FlSpot(index.toDouble(), [6.0, 8.0, 7.0, 6.0, 7.0, 8.0][index]),
                                  ),
                                  isCurved: true,
                                  color: AppColors.orangeLineChartColor,
                                  dotData: FlDotData(
                                    show: true,
                                    getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                                      radius: 3,
                                      color: AppColors.whiteColor,
                                      strokeColor: AppColors.orangeLineChartColor,
                                      strokeWidth: 2,
                                    ),
                                  ),
                                  belowBarData: BarAreaData(show: false),
                                  barWidth: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Divider(
                        height: 1,
                        color: AppColors.brightGreyColor,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '1426',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor
                              ),
                            ),
                            const SizedBox(width: 4,),
                            Text(
                              'Task',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.greyColor
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 165.5,
                  height: 134,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12
                        ),
                        child: Text(
                          'Habits Trend',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12
                        ),
                        child: Text(
                          '19 Aug - Now',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor
                          ),
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12
                        ),
                        child: SizedBox(
                          height: 17,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(show: false),
                              titlesData: FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              minX: 0,
                              maxX: ([6, 8, 7, 6, 7, 8].length - 1).toDouble(),
                              minY: [6, 8, 7, 6, 7, 8].reduce((a, b) => a < b ? a : b) - 2,
                              maxY: [6, 8, 7, 6, 7, 8].reduce((a, b) => a > b ? a : b) + 2,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: List.generate(
                                    [6, 8, 7, 6, 7, 8].length,
                                        (index) => FlSpot(index.toDouble(), [6.0, 8.0, 7.0, 6.0, 7.0, 8.0][index]),
                                  ),
                                  isCurved: true,
                                  color: AppColors.purpleLineChartColor,
                                  dotData: FlDotData(
                                    show: true,
                                    getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                                      radius: 3,
                                      color: AppColors.whiteColor,
                                      strokeColor: AppColors.purpleLineChartColor,
                                      strokeWidth: 2,
                                    ),
                                  ),
                                  belowBarData: BarAreaData(show: false),
                                  barWidth: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Divider(
                        height: 1,
                        color: AppColors.brightGreyColor,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '1426',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor
                                ),
                              ),
                              const SizedBox(width: 4,),
                              Text(
                                'Task',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ],
            )
          )
        ]
      )
    );
  }
}
