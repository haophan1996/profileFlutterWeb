import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;


education() {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Container(
      width: 380,
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
            Text("Education",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            textLink(
                "Currently at ",
                "Wentworth Institute of Technology",
                'https://wit.edu/'),
            Text("Expected Graduation: Aug, 2024", style: TextStyle(color: Colors.white,fontSize: 15),),
            Text("Bachelor of Science in Computer Science", style: TextStyle(color: Colors.white,fontSize: 15),),
            Text("Overall GPA 3.4/4.0", style: TextStyle(color: Colors.white,fontSize: 15),)

          ],
        ),
      ),
    ),
  );
}

textLink(String text, String linkText, String link) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: text,
          style: TextStyle(fontSize: 15, color: Colors.white ),
        ),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                js.context.callMethod('open', [link]);
              },
            text: linkText,
            style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold)),
      ]),
    ),
  );
}
