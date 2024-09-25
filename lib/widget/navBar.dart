import 'package:buenavista/widget/listTile.dart';
import 'package:flutter/material.dart';
class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("User Prueva"),
            accountEmail: Text("User123Prueva@gmail.com"),
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
            decoration: BoxDecoration(
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
          listTile("home", Icon(Icons.home), "/",),
          listTile("historial", Icon(Icons.flight), "",),
          listTile("Pages02", Icon(Icons.favorite), "",),
          listTile("Pages03", Icon(Icons.favorite), "",),
          listTile("Pages04", Icon(Icons.favorite), "",),
          listTile("Pages05", Icon(Icons.favorite), "",),
          listTile("settings", Icon(Icons.settings), "",),
          ///////fin lista del menu/////////
        ],
      ),
    );
  }
}