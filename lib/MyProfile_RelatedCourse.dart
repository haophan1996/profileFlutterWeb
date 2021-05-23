import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


relatedCourse() {
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
            Text("Related Courses",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),

            Text("Computer Science I & II, Data Structures, Computer Organization, Network Programming, Software Engineering, Discrete Mathematics, Algorithms, Databases, Probability & Statistics for Engineers", style: TextStyle(color: Colors.white,fontSize: 15,height: 1.3),),

          ],
        ),
      ),
    ),
  );
}
