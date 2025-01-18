import 'package:flutter/material.dart';
import 'package:work_focus_mobile/core/theme/app_theme.dart';
import 'package:work_focus_mobile/features/auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter'
      ),
      home: LoginPage(),
    );
  }
}

