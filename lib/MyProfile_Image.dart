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
                      "https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/158420874_2956196141329223_3459438880935934395_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=5ATA-gt8eo4AX96lzSq&_nc_ht=scontent-bos3-1.xx&oh=5bd4e6c6d7d54b2fd02e45ec5bd39e5a&oe=60D0363F")),
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
