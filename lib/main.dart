import 'package:buenavista/firebase_options.dart';
import 'package:buenavista/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'system/exportarRutasApp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /////rutas de la app///////////
  final _routes={
    '/':(context) => const Home(),
    '/reservar':(context) => const Home(),
    '/Login':(context) => const Login(),
  };
//////////////////////////////
///
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: const[
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: '/',
      routes: _routes,
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context)=> const errorPages());
      },
    );
  }
}