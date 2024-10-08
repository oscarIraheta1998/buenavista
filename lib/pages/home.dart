import 'package:buenavista/generated/l10n.dart';
import 'package:buenavista/system/globalVar.dart';
import 'package:buenavista/widget/layout/articles.dart';
import 'package:buenavista/widget/layout/header.dart';
import 'package:buenavista/widget/layout/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool isWeb(BuildContext context) => MediaQuery.of(context).size.width>=MyZize.isWeb;
    return responsive(context, isWeb(context), homeContent(context, isWeb(context)));
      /*ListView(children: [
        header(context),
        ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, "/client/home");
          },
          child: const Text("home")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, "/Login");
          },
          child: const Text("login")
        ),  
      ],
      ),*/
  }
}

Widget homeContent(BuildContext context, bool isWeb){
  final imgArticuloHorario=[
    const AssetImage("assets/img/relog.png"),
  ];
  final imgarticuloServicioDeAlogamiento=[
    const AssetImage("assets/img/abitacion (1).png"),
    const AssetImage("assets/img/abitacion (2).png"),
    const AssetImage("assets/img/abitacion (3).png"),
    const AssetImage("assets/img/abitacion (4).png"),
  ];
  return CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: header(context, isWeb),
      ),
      SliverToBoxAdapter(
        child: articleCenter(isWeb, imgArticuloHorario, S.of(context).Articulo_Horario_Titulo, S.of(context).Articulo_Horario_informacion),
      ),
      SliverToBoxAdapter(
        child: articleCenter(isWeb, imgarticuloServicioDeAlogamiento, S.of(context).Articulo_Horario_Titulo, S.of(context).Articulo_Horario_informacion),
      ),
    ],
  );
}