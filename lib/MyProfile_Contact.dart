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
            textNoLink(" Email: phanh5@wit.edu",
                "https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_email.png"),
            textNoLink(" Phone: 8575265202 ",
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_phone.png'),
            textLinkNoColorIco(
                " Social: ",
                "Facebook",
                'https://www.facebook.com/HaoPhan96s/',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_f.png'),
            textLink(
                " Social ",
                "LinkedIN",
                'https://www.linkedin.com/in/Hao-phan?fbclid=IwAR3BbU9i2LSG44RolcR80GuQP9dwwlCWKdnVPC2hn_JdlwLQRChVZaJG3Oo',
                'https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/ico_lk.png'),
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
          style: TextStyle(fontSize: 15, color: Colors.white),
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
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                js.context.callMethod('open', [link]);
              },
            text: linkText,
            style: TextStyle(
                fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold)),
      ]),
    ),
  );
}

textLinkNoColorIco(String text, String linkText, String link, String ico) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: RichText(
      text: TextSpan(children: [
        WidgetSpan(
            child: Image.network(
              ico,
            )),
        TextSpan(
          text: text,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                js.context.callMethod('open', [link]);
              },
            text: linkText,
            style: TextStyle(
                fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold)),
      ]),
    ),
  );
}