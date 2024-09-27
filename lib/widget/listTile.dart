import 'package:flutter/material.dart';

Widget listTile(BuildContext context, String text, Color color, Icon icon, String url, ){
  return ListTile(
    leading: icon,
    title: Text(text, style: TextStyle(color: color),),
    onTap: ()=> Navigator.pushNamed(context, url),
  );
}



