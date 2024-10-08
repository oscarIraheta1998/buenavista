import 'package:buenavista/generated/l10n.dart';
import 'package:buenavista/system/globalVar.dart';
import 'package:flutter/material.dart';

Widget header(BuildContext context, bool web){
  double screenHeigth = MediaQuery.of(context).size.height;
  double H = screenHeigth-(screenHeigth/4);
  return Stack(
    children: <Widget>[
      Container(
        height: H,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/playa.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      web ? webHeader(context, H) : nombre_hotel(context,)
    ] 
  );
}

Widget webHeader(BuildContext context, double H){
  return Stack(
    children: <Widget>[
      Container(
        height: H,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(234, 0, 0, 0),Colors.transparent],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5,5]
          )
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: nombre_hotel(context),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container()
            )
          ],
        ),
      ),
      effect_fading(H),
    ],
  );
}

Widget effect_fading(double H){
  return Container(
    height: H,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [MyColor.background,Colors.transparent],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: [0,0.3]
      )
    ),
  );
}
Widget nombre_hotel(BuildContext context) {
  return Center(
    child: Stack(
      children: <Widget>[
        // borde.
        Text(
          S.of(context).nombre_hotel,
          style: TextStyle(
            fontSize: 40,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 6
              ..color = MyColor.primariColor,
          ),
        ),
        // interior
        Text(
          S.of(context).nombre_hotel,
          style: const TextStyle(
            fontSize: 40,
            color: MyColor.sextoColor,
          ),
        ),
      ],
    ),
  );
}