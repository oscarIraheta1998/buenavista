import 'package:flutter/material.dart';

Widget cartPopularRoom(String nombreHabitacion) {
  return Container(
    width: 300,
    height: 150,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      image: DecorationImage(
        image: AssetImage("assets/img/portada01.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.black45,
        ),
        child: Text(
          nombreHabitacion,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
