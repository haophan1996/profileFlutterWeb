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

class MyProfile extends GetView<ProfileController> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(child: Column(
                    children: [
                      education(),
                      intro(),
                    ],
                  )),
                  SizedBox(width: 10,),
                  Flexible(child: Column(
                    children: [
                      summary(),
                      relatedCourse(),
                      skil(),
                      myProject(controller)
                    ],
                  )),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
