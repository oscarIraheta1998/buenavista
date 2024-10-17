import 'package:flutter/material.dart';

Widget cartPopularRoom(BuildContext context){
  return Stack(
    children: [
      Positioned(
        bottom: 0,
        right: 20,
        left: 20,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.1),
                spreadRadius: 15,
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 210,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/portada01.png")
            ),
          ),
        ),
      ),
    ],
  );
}