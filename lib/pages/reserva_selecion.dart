import 'package:buenavista/system/global_var.dart';
import 'package:buenavista/widget/cart/room.dart';
import 'package:buenavista/widget/layout/responsive.dart';
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
    bool isWeb(BuildContext context) => MediaQuery.of(context).size.width>=MyZize.isWeb;
    return responsive(context, isWeb(context), contentReservaSelec(context));
  }
}
Widget contentReservaSelec(BuildContext context){
  return Column(
    children: [
      menu(context),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Scrollbar(
          showTrackOnHover: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              cartPopularRoom(context),
              cartPopularRoom(context),
              cartPopularRoom(context),
              cartPopularRoom(context),
              cartPopularRoom(context),
            ],
          ),
        ),
      ),
    ],
  );
}
Widget menu(BuildContext context){
  return const Column(
    children: [
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular place",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Text(
              "See all",
              style: TextStyle(
                fontSize: 14,
                color: Colors.amberAccent,
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 15),
    ]
  );
}

Widget llamarHabitaciones(BuildContext context){
  return StreamBuilder(
    stream: FirebaseFirestore.instance.collection(DBTablaHabitacion.nombreTabla).snapshots(),
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }else if(snapshot.hasError){
        return Center(
          child: Text("${snapshot.error}"),
        );
      }else{
        return ListView.separated(
          shrinkWrap: true,
          itemCount: snapshot.data.docs.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${snapshot.data.docs[index][DBTablaHabitacion.nombre]}", style: const TextStyle(color: Colors.amber),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${snapshot.data.docs[index][DBTablaHabitacion.ocupacionMaxima]}"),
                  Text("${snapshot.data.docs[index][DBTablaHabitacion.precioPorNoche]}"),
                ],
              ),
            );
          },
        );
      }
    },
  );
}