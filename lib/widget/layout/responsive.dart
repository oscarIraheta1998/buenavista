import 'package:buenavista/system/globalVar.dart';
import 'package:buenavista/widget/navBar.dart';
import 'package:flutter/material.dart';

Widget responsive(BuildContext context, bool isWeb, Widget contentPage){

  return isWeb ? webStyle(isWeb, contentPage) : androiStyle(isWeb, contentPage);
  
}

Widget webStyle(bool isWeb, Widget contentPage){
  return Scaffold(
    backgroundColor: MyColor.background,
    body: body(isWeb, contentPage),
  );
}

Widget androiStyle(bool isWeb, Widget contentPage){
  return Scaffold(
    drawer: const Navbar(),
    appBar: AppBar(
        title: const Text("H O M E"),
        backgroundColor: MyColor.primariColor,
      ),
    backgroundColor: MyColor.background,
    body: body(isWeb, contentPage),
  );
}

Widget body(bool web, Widget contentPage){
  return Center(
      child: Row(
        children: [
          if(web)
            Container(
              color: MyColor.background,
              child: const Navbar()
            ),
          Expanded(
            child: Container(
              color: MyColor.background,
              child: contentPage,
            ),
          )
        ],
      ),
    );
}