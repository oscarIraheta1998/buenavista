// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Password`
  String get Contrasena {
    return Intl.message(
      'Password',
      name: 'Contrasena',
      desc: '',
      args: [],
    );
  }

  /// `iniciar sesión`
  String get iniciar_sesion {
    return Intl.message(
      'iniciar sesión',
      name: 'iniciar_sesion',
      desc: '',
      args: [],
    );
  }

  /// `inicio`
  String get inicio {
    return Intl.message(
      'inicio',
      name: 'inicio',
      desc: '',
      args: [],
    );
  }

  /// `BIENVENIDO ARGUETA HOTEL`
  String get nombre_hotel {
    return Intl.message(
      'BIENVENIDO ARGUETA HOTEL',
      name: 'nombre_hotel',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get titulo_popular {
    return Intl.message(
      'Popular',
      name: 'titulo_popular',
      desc: '',
      args: [],
    );
  }

  /// `Roon`
  String get titulo_habitacion {
    return Intl.message(
      'Roon',
      name: 'titulo_habitacion',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
