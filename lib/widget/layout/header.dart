import 'package:buenavista/generated/l10n.dart';
import 'package:buenavista/system/global_var.dart';
import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

Widget header(BuildContext context, bool web){
  double screenHeigth = MediaQuery.of(context).size.height;
  double H = screenHeigth-(screenHeigth/4);
  return Stack(
    children: <Widget>[
      SizedBox(
        height: H,
        child: AnotherCarousel(
          images: const[
            ExactAssetImage("assets/img/portada01.png"),
            ExactAssetImage("assets/img/portada02.png"),
            ExactAssetImage("assets/img/portada03.png"),
            ExactAssetImage("assets/img/portada04.png"),
          ],
          showIndicator: false,
          borderRadius: false,
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: true,
          overlayShadow: true,
          overlayShadowColors: MyColor.background,
          overlayShadowSize: 0.7,
        ),
      ),
      Column(
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).nombre_hotel,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: MyColor.sextoColor,
                  )
                ),
                TextSpan(
                  text: S.of(context).nombre_hotel,
                  style: const TextStyle(
                    fontSize: 18,
                    color: MyColor.sextoColor,
                  ),
                ),
              ]
            ),
          )
        ],
      ),
    ]
  );
}