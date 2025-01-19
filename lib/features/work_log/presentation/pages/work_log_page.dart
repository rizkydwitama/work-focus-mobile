import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_focus_mobile/features/work_log/presentation/controllers/work_log_controller.dart';

class WorkLogPage extends StatelessWidget {
  const WorkLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final WorkLogController controller = Get.find();
    
    return Scaffold(
      body: SafeArea(child: Text('Work Log Page')),
    );
  }
}
