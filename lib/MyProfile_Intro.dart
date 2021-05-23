import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

intro() {
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
            Text("Intro",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            //Text("Studies at Wentworth Institute of Technology", style: TextStyle(fontSize: 20, color: Colors.white))
            textLink(
                " Studies at ",
                "Wentworth Institute of Technology  ",
                'https://wit.edu/',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_school.png'),
            textLink(
                " Studies at ",
                "Bunker Hill Community College",
                'https://bhcc.edu/',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_school.png'),
            textLink(
                " Went to ",
                "North Quincy High School",
                'https://nqhs.quincypublicschools.com/',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_school.png'),
            textLink(
                " Lives in ",
                "Quincy, Massachusetts",
                'http://www.quincyma.gov/',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_live.png'),
            textLink(
                " From ",
                "Phan Thiet",
                'https://en.wikipedia.org/wiki/Phan_Thi%E1%BA%BFt',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_from.png'),
          ],
        ),
      ),
    ),
  );
}

textLink(String text, String linkText, String link, String ico) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: RichText(
      text: TextSpan(children: [
        WidgetSpan(
            child: Image.network(
          ico,
          color: Colors.white,
        )),
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
