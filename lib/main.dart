import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_my_profile/MyProfile.dart';
import 'package:web_my_profile/ProfileBinding.dart';

void main() {
  ProfileBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyProfile(),
    );
  }
}
