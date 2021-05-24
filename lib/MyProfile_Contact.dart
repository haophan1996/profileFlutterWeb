import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

contact() {
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
            Text("Contact",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            //Text("Studies at Wentworth Institute of Technology", style: TextStyle(fontSize: 20, color: Colors.white))
            textNoLink(
                " Email: phanh5@wit.edu",
                "https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_email.png"),
            textNoLink(
                " Phone: 8575265202 ",
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_phone.png'),
            textLink(
                " Social: ",
                "Facebook",
                'https://www.facebook.com/HaoPhan96s/',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_f.png'),
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

textNoLink(String text, String ico) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: RichText(
      text: TextSpan(children: [
        WidgetSpan(
            child: Image.network(
              ico,
              color: Colors.white,
              width: 20,
              height: 20,
            )),
        TextSpan(
          text: text,
          style: TextStyle(fontSize: 15, color: Colors.white ),
        ),
      ]),
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
          style: TextStyle(fontSize: 15, color: Colors.blue ),
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
