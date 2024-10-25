import 'package:buenavista/generated/l10n.dart';
import 'package:buenavista/system/global_var.dart';
import 'package:buenavista/widget/cart/room.dart';
import 'package:buenavista/widget/layout/responsive.dart';
import 'package:buenavista/widget/scroll_horizontal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Reservaselec extends StatefulWidget {
  const Reservaselec({super.key});

  @override
  State<Reservaselec> createState() => _ReservaselecState();
}

class _ReservaselecState extends State<Reservaselec> {
  @override
  Widget build(BuildContext context) {
    bool isWeb(BuildContext context) =>
        MediaQuery.of(context).size.width >= MyZize.isWeb;
    return responsive(context, isWeb(context), contentReservaSelec(context));
  }
}

Widget contentReservaSelec(BuildContext context) {
  final ScrollController _scrollController = ScrollController();
  return Column(
    children: [
      menu(context, S.of(context).Articulo_Horario_Titulo),
      scroll(
        _scrollController,
        Axis.horizontal,
        llamarHabitaciones(context),
      ),
      menu(context, S.of(context).Articulo_SERVICIO_Titulo),
      scroll(
        _scrollController,
        Axis.vertical,
        llamarHabitaciones(context),
      ),
    ],
  );
}

Widget menu(BuildContext context, String tituloT) {
  return Column(children: [
    const SizedBox(height: 20),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        tituloT,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: MyColor.sextoColor,
        ),
      ),
    ),
    const SizedBox(height: 15),
  ]);
}

Widget llamarHabitaciones(BuildContext context) {
  return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection(DBTablaHabitacion.nombreTabla)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("${snapshot.error}"),
          );
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data.docs.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return cartPopularRoom(
                  snapshot.data.docs[index][DBTablaHabitacion.nombre]);
            },
          ); /*ListView.separated(
            shrinkWrap: true,
            itemCount: snapshot.data.docs.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemBuilder: (BuildContext context, int index) {
              return cartPopularRoom(
                  context, snapshot.data.docs[index][DBTablaHabitacion.nombre]);
            },
          );*/
        }
      });
}
