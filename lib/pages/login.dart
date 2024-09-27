import 'package:buenavista/system/globalVar.dart';
import 'package:buenavista/widget/layout/login.dart';
import 'package:buenavista/widget/navBar.dart';
import 'package:buenavista/widget/widgetForm.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _HomeState();
}

class _HomeState extends State<Login> {
  TextEditingController  emailCtrl = new TextEditingController();
  TextEditingController  passwordCtrl = new TextEditingController();
  GlobalKey<FormState> keyForm= new GlobalKey();

  String? validateEmail(String? value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    final isEmailValid= regExp.hasMatch(value ?? "");
    if (!isEmailValid) {
      return "El correo es necesario";
    } 
    else {
      return null;
    }
  }
  String? validatePassword(String? value) {
    print("valorrr $value passsword ${passwordCtrl.text}");
    if (value != passwordCtrl.text) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: const Text("L O G I N"),
        backgroundColor: MyColor.primariColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/playa02.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: webLogin(screenWidth, screenHeigth, formUI()),
        ),
      ),
    );
  }

  Widget formUI() {
    return Form(
      key: keyForm,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(S.of(context).iniciar_sesion,),
            formItemsDesign(
              Icons.email,
              textFormField(emailCtrl, S.of(context).iniciar_sesion, TextInputType.emailAddress, 32, validateEmail, Colors.white),
            ),
            formItemsDesign(
              Icons.remove_red_eye,
              passwordTextFormField(passwordCtrl, S.of(context).Contrasena, validatePassword)
            ),

            GestureDetector(
            onTap: (){
              save();
            },
            child: Container(
              margin: new EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
                gradient: const LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ],
                begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Text(S.of(context).iniciar_sesion,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)
                ),
                padding: EdgeInsets.only(top: 16, bottom: 16),
              )
            )
          ],
        ),
      ),
    );
  }
  save() {
  }
}