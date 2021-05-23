import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

coverImage() {
  return Padding(
    padding: EdgeInsets.only(bottom: 120 ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://raw.githubusercontent.com/haophan1996/profileFlutterWeb/main/image/bg.png",
        height: 500,
        fit: BoxFit.cover,
      ),
    ),
  );
}

profileImage() {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRect(
      clipBehavior: Clip.hardEdge,
      child: OverflowBox(
        maxHeight: 200,
        maxWidth: 200,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 4),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/71293555?v=4")),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    ),
  );
}

myProfileImage() {
  return Container(
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        coverImage(),
        profileImage(),
      ],
    ),
  );
}
