import 'package:buenavista/system/global_var.dart';
import 'package:flutter/material.dart';

Widget cardPopularRoom(String nombreHabitacion) {
  return SizedBox(
    height: 150,
    child: AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        clipBehavior: Clip.antiAlias,
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
            width: double.infinity,
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
      ),
    ),
  );
}

Widget cardRoom(BuildContext context, String nombreHabitacion, double precio,
    int ocupacion, int estado) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
    child: Card(
      color: MyColor.trecerColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    "assets/img/portada01.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nombreHabitacion,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'USD $precio',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  'Ocupación Máxima: $ocupacion',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "Estado Actual: $estado",
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )),
          ],
        ),
      ),
    ),
  );
}
