import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:js' as js;
import 'MyProfileController.dart';

myProject(ProfileController controller) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Container(
      width: 600,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Projects",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "- MemeVL Application  \n  (Person Project)  May, 2021 – July, 2021",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.pinkAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Able to run iOS or Android devices",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "• Used Firebase as Backend to save information users",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "• Users able to post delete media in Application",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            imageProject(controller.pageController2, controller.memList,
                controller.offSet2.value),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "- Speaker Session Web Application | Software Engineering \n  (Group of 9)  Sep, 2020 – Dec, 2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.pinkAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Wrote backend code in Java utilizing Apache NetBeans",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "• Created UI on HTML",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    "• Used database to save data from Information Speaker ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  customText("Github Link",
                      "https://github.com/haophan1996/softwareEngineering"),
                ],
              ),
            ),
            imageProject(controller.pageController, controller.imageList,
                controller.offSet.value),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "- Chess Game Server Client| Network Programming  \n  (Group of 2)  Sep, 2020 – Dec, 2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.pinkAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Utilized the NetBeans to write code in Java",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "• Developed UI by JavaFX",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "• Created server, so client can connect to play game and chat, using Server Socket",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "- Music Player Android Application  \n  (Person Project)  Jun, 2020 – Sep, 2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.pinkAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  Text(
                    "• Created a basic music player application on android to play music using Java",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

imageProject(PageController? controller, List<Map<dynamic, dynamic>> imageList,
    double offSet) {
  return Container(
    height: 400,
    //padding: EdgeInsets.only(bottom: 30),
    child: PageView.builder(
      itemCount: imageList.length,
      controller: controller,
      itemBuilder: (context, i) {
        return Transform.scale(
          scale: 1,
          child: Container(
            child: Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                        onTap: () {
                          Get.defaultDialog(
                              title: imageList[i]['text'],
                              content: Expanded(
                                child: Image.asset(imageList[i]['image'], ),
                              ));
                        },
                        child: Image.asset(
                            imageList[i]['image'],
                            height: 370,
                            fit: BoxFit.contain,
                            alignment: Alignment(-offSet.abs(), 0),
                          ),
                        )),
                Positioned(
                  left: 10,
                  bottom: 20,
                  right: 10,
                  child: Text(
                    imageList[i]['text'],
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}

customText(String text, String link) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "• ",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        TextSpan(
            text: text,
            style: TextStyle(color: Colors.blue, fontSize: 15),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                js.context.callMethod('open', [link]);
              }),
      ]),
    ),
  );
}
