import 'dart:ui';
import 'package:flutter/material.dart';

final _borderRadius=BorderRadius.circular(30);

Widget loginContent(){
  return Container();
}

Widget movileLogin(double S,){
  return Container(
    decoration: BoxDecoration(
      color: Colors.indigo,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text("$S"),
  );
}

Widget webLogin(double W, double H, Widget Form){
  return ClipRRect(
    borderRadius: _borderRadius,
    child: SizedBox(
      width: W-200,
      height: H-200,
      child: Stack(
        children: [
          // efecto blur
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(),
          ),
          //gradiente efecto
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(0.2)),
              borderRadius: _borderRadius,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.4),
                  Colors.white.withOpacity(0.1),
                ]
              ),
            ),
          ),
          //contenido
          Form,
        ],
      ),
    ),
  );
}




