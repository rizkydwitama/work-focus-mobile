import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:work_focus_mobile/features/profile/presentation/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.find();

    return Scaffold(body: Center(child: Text('Profile Page'),),);
  }
}
