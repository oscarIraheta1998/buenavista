import 'package:flutter/material.dart';
class errorPages extends StatefulWidget {
  const errorPages({super.key});

  @override
  State<errorPages> createState() => _errorPagesState();
}

class _errorPagesState extends State<errorPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error 404"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, "/");
          },
          child: const Text("home")
          ),
      ),
    );
  }
}