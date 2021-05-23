import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:web_my_profile/model.dart';
import 'dart:math' as math;

class ProfileController extends GetxController {
  PageController pageController = PageController(viewportFraction: 0.7);
  PageController pageController2 = PageController(viewportFraction: 0.7);
  RxDouble offSet = 0.0.obs;
  RxDouble offSet2 = 0.0.obs;
  List<Map> imageList = [
    {
      'image': 'im_1.png',
      'text': 'Session',
    },
    {
      'image': 'im_2.png',
      'text': 'Time Slot',
    },
    {
      'image': 'im_3.png',
      'text': 'Speaker',
    },
    {
      'image': 'im_4.JPG',
      'text': 'Main UI',
    },
  ];

  List<Map> memList = [
    {
      'image': 'mem_1.png',
      'text': 'Profile',
    },
    {
      'image': 'mem_2.png',
      'text': 'Profile Post Status',
    },
    {
      'image': 'mem_3.png',
      'text': 'Create Post',
    },
    {
      'image': 'mem_4.png',
      'text': 'Sign in',
    },
    {
      'image': 'mem_5.png',
      'text': 'Register',
    },
  ];

  @override
  void onInit() {
    super.onInit();

    pageController.addListener(() {
      offSet.value = pageController.page!;
    });
    pageController2.addListener(() {
      offSet2.value = pageController2.page!;
    });
  }
}
