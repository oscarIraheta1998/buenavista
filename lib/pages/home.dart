import 'package:buenavista/system/globalVar.dart';
import 'package:buenavista/widget/multiplataformas/header.dart';
import 'package:buenavista/widget/navBar.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: const Text("H O M E"),
        backgroundColor: MyColor.primariColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: MyColor.background,
        ),
        child: ListView(children: [
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
        ),
      ),
    );
  }
}