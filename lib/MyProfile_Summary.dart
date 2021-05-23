import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

summary() {
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
            Text("Summary",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text(
                'My major is Computer Science at Wentworth (Junior, B.C), I\'m looking for co-op for Spring 2021. I love to solve problem in CS',
                style: TextStyle(color: Colors.white, fontSize: 15,height: 1.3),
            ),
          ],
        ),
      ),
    ),
  );
}
