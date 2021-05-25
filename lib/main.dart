import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_my_profile/MyProfile.dart';
import 'package:web_my_profile/MyProfileMobile.dart';
import 'package:web_my_profile/ProfileBinding.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  ProfileBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Hao Phan Profile",
      home: ScreenTypeLayout(
        breakpoints: ScreenBreakpoints(tablet: 600, desktop: 950, watch: 300),
        mobile: MyProfileMobile(),
        tablet: MyProfileMobile(),
        desktop: MyProfile(),
      ),
      //home: MyProfile(),
    );
  }
}
