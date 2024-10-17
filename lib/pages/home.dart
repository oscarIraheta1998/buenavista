import 'package:buenavista/system/global_var.dart';
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
  return CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: header(context, isWeb),
      ),
    ],
  );
}