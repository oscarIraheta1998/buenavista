import 'package:flutter/material.dart';

Widget listTile(String text, Icon icon, String url){
  return ListTile(
    leading: icon,
    title: Text(text),
    onTap: ()=> url,
  );
}



