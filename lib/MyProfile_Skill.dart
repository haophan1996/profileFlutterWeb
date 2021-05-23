import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


skil() {
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
            Text("Skill",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            customText("Software: ", "NetBeans, Google Drive, Microsoft Office, Wireshark, MySQL Workbench, Android Studio, Git"),
            customText("Languages: ", "Java, SQL, Dart"),
            customText("Operating System: ", "Window 10, MacOS"),

             
          ],
        ),
      ),
    ),
  );
}
customText(String Context, String text) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: RichText(
      text: TextSpan(children: [ 
        TextSpan(
          text: Context,
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ,color: Colors.white),
        ),
        TextSpan(
            text: text,
            style: TextStyle(fontSize: 15, color: Colors.white, height: 1.3)),
      ]),
    ),
  );
}
