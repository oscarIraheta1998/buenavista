import 'package:buenavista/system/globalVar.dart';
import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

Widget articleCenter(bool web, dynamic _img, String article_title, String article_information,){
  return Row(
    children: [
      web ? Row(
          children: [
            imageArticle(_img),
            textArticle(article_title, article_information)
          ],
        ) : movileArticle(_img, article_title, article_information),
    ],
  );
}



Widget movileArticle(dynamic _img, String article_title, String article_information){
  return Column(
    children: [
      imageArticle(_img),
      textArticle(article_title, article_information),
    ],
  );
}

Widget imageArticle(dynamic _img){
  return SizedBox(
    height: 300.0,
    child: AnotherCarousel(
      images: _img,
      showIndicator: false,
      borderRadius: false,
    )
  );
}

Widget textArticle(String article_title, String article_information){
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        Text(article_title+"\n",
          style: const TextStyle(
            fontSize: 30,
            color: MyColor.sextoColor
          )
        ),
        Text(
          article_information,
          style: const TextStyle(
            fontSize: 18,
            color: MyColor.sextoColor
          ),
        ),
      ],
    ),
  );
}