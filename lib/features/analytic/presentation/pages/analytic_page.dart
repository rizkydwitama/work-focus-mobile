import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:work_focus_mobile/features/analytic/presentation/controllers/analytic_controller.dart';

class AnalyticPage extends StatelessWidget {
  const AnalyticPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AnalyticController controller = Get.find();

    return Scaffold(
      body: Center(
        child: Text(
          'Analytic Page'
        ),
      ),
    );
  }
}
