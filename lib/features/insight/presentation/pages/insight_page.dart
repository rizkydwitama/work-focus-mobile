import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/features/insight/presentation/controllers/insight_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/repositories/active_day_repository_impl.dart';
import '../../data/repositories/month_repository_impl.dart';
import '../../domain/entities/month.dart';
import '../../domain/repositories/active_day_repository.dart';
import '../../domain/repositories/month_repository.dart';

class InsightPage extends StatelessWidget {
  const InsightPage({super.key});

  @override
  Widget build(BuildContext context) {
    final InsightController controller = Get.find();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final localization = AppLocalizations.of(context)!;

    MonthRepository monthRepository = MonthRepositoryImpl(context);
    List<Month> months = monthRepository.getMonths();

    ActiveDayRepository activeDayRepository = ActiveDayRepositoryImpl();
    List<int> activeDays = activeDayRepository.getActiveDays();

    return Scaffold(
      backgroundColor: AppColors.blueBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.blueBackgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          localization.habits,
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
              color: AppColors.blackColor,
            )
        )
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.fromLTRB(16, 12, 16, 32),
        decoration: BoxDecoration(
            color: isDarkMode
                ? AppColors.darkBottomNavbarColor
                : AppColors.whiteColor,
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
                  localization.insight_data,
                  style: TextStyle(
                    fontSize: 16,
                    color: isDarkMode
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              Divider(
                color: isDarkMode
                    ? AppColors.whiteColor.withValues(alpha: 0.08)
                    : AppColors.brightGreyColor,
              ),
              const SizedBox(height: 16,),
              Center(
                child: SizedBox(
                  width: 160,
                  height: 160,
                  child: Stack(
                    children: [
                      PieChart(
                          PieChartData(
                            centerSpaceRadius: 80,
                            sectionsSpace: 2,
                            startDegreeOffset: 0,
                            sections: [
                              PieChartSectionData(
                                color: AppColors.blueChartColor,
                                value: 100,
                                radius: 5,
                                showTitle: false,
                                titleStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '100%',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: isDarkMode
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor,
                                fontSize: 32
                              ),
                            ),
                            Text(
                              localization.tracked_rate,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: isDarkMode
                                    ? AppColors.greyDarkModeColor
                                    : AppColors.secondaryGreyColor
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                )
              ),
              const SizedBox(height: 16,),
              Text(
                localization.work_streak,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: isDarkMode
                      ? AppColors.greyDarkModeColor
                      : AppColors.blackColor,
                ),
              ),
              const SizedBox(height: 16,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                    visible: !isDarkMode,
                    child: Image.asset(
                      'assets/images/images/image_work_streak.png',
                      width: 53,
                      height: 52,
                    ),
                  ),
                  Visibility(
                      visible: !isDarkMode,
                      child: SizedBox(width: 24,)
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        localization.longest_current,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: isDarkMode
                              ? AppColors.greyDarkModeColor
                              : AppColors.secondaryGreyColor
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
                              color: isDarkMode
                                  ? AppColors.greyDarkModeColor
                                  : AppColors.blackColor,
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Text(
                            localization.days,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: isDarkMode
                                  ? AppColors.greyDarkModeColor
                                  : AppColors.secondaryGreyColor
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4,),
                      Text(
                        localization.work_streak_date,
                        style: TextStyle(
                          color: isDarkMode
                              ? AppColors.greyDarkModeColor
                              : AppColors.secondaryGreyColor,
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
                    localization.yearly_view,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: isDarkMode
                          ? AppColors.greyDarkModeColor
                          : AppColors.blackColor,
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
                        localization.tracked,
                        style: TextStyle(
                          fontSize: 12,
                          color: isDarkMode
                              ? AppColors.greyDarkModeColor
                              : AppColors.blackColor,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(width: 16,),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: isDarkMode
                                ? AppColors.greyDarkModeColor
                                : AppColors.whiteUntrackedColor,
                        ),
                      ),
                      const SizedBox(width: 4.5,),
                      Text(
                        localization.untracked,
                        style: TextStyle(
                            fontSize: 12,
                            color: isDarkMode
                                ? AppColors.greyDarkModeColor
                                : AppColors.blackColor,
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
                      color: isDarkMode
                          ? AppColors.greyDarkModeColor
                          : AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < months.length; i ++ ) ... [
                        Text(
                          months[i].name,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: isDarkMode
                                ? AppColors.greyDarkModeColor
                                : AppColors.blackColor,
                          ),
                        ),
                      ],
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
                          controller.isActive.value = activeDays
                              .contains(index + 1);
                          return  Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              color: controller.isActive.value
                                  ? AppColors.blueTrackedColor
                                  : isDarkMode
                                  ? AppColors.darkChartColor
                                  : AppColors.whiteUntrackedColor,
                              border: Border.fromBorderSide(
                                BorderSide.none
                              )
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
