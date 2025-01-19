import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/features/dashboard/presentation/controllers/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController controller = Get.find();

    return Scaffold(
      body: SafeArea(child: Text('Dashboard Page')),
    );
  }
}
