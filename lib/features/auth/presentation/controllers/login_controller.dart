import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }
}