import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_my_profile/MyProfileController.dart';
import 'package:web_my_profile/MyProfile_Image.dart';
import 'package:web_my_profile/MyProfile_Intro.dart';
import 'package:web_my_profile/MyProfile_Summary.dart';
import 'package:web_my_profile/MyProfile_Edu.dart';
import 'package:web_my_profile/MyProfile_RelatedCourse.dart';
import 'package:web_my_profile/MyProfile_Skill.dart';
import 'package:web_my_profile/MyProfile_Project.dart';

import 'MyProfile_Contact.dart';

class MyProfileMobile extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white10,
        //constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              myProfileImage(),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  "Hao Phan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              contact(),
              education(),
              intro(),
              summary(),
              relatedCourse(),
              skil(),
              myProject(controller),
            ],
          ),
        ),
      ),
    );
  }
}
