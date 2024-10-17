import 'package:buenavista/system/global_var.dart';
import 'package:buenavista/widget/listTile.dart';
import 'package:flutter/material.dart';
class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyColor.primariColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("User Prueva"),
            accountEmail: const Text("User123Prueva@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://pub-static.fotor.com/assets/projects/pages/d5bdd0513a0740a8a38752dbc32586d0/fotor-03d1a91a0cec4542927f53c87e0599f6.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  "https://image.slidesdocs.com/responsive-images/background/summer-cartoon-beach-landscape-powerpoint-background_e5cbdac6db__960_540.jpg"
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ///////lista del menu////////
          listTile(context, "home",MyColor.sextoColor, const Icon(Icons.home, color: MyColor.sextoColor,),  "/",),
          listTile(context, "reservar Havitacion",MyColor.sextoColor, const Icon(Icons.flight, color: MyColor.sextoColor,), "/reservarHavitacion",),
          listTile(context, "Registar",MyColor.sextoColor, const Icon(Icons.login, color: MyColor.sextoColor,), "/Login",),
          ///////fin lista del menu/////////
        ],
      ),
    );
  }
}