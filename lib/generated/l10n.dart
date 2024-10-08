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

  /// `Abierto las 24 horas del dia.`
  String get Articulo_Horario_Titulo {
    return Intl.message(
      'Abierto las 24 horas del dia.',
      name: 'Articulo_Horario_Titulo',
      desc: '',
      args: [],
    );
  }

  /// `Nuestro personal esta simpre dispuesto a brindarte nuestros servicios de calidad calificados con los mejores estandares de calidad, siempre que tu lo necesites los 365 dias del año \n \nBelleza en cada detalle, donde cada rincón está pensado para tu deleite y tu nostalgia. Visítanos y te darás cuenta de lo que te espera`
  String get Articulo_Horario_informacion {
    return Intl.message(
      'Nuestro personal esta simpre dispuesto a brindarte nuestros servicios de calidad calificados con los mejores estandares de calidad, siempre que tu lo necesites los 365 dias del año \n \nBelleza en cada detalle, donde cada rincón está pensado para tu deleite y tu nostalgia. Visítanos y te darás cuenta de lo que te espera',
      name: 'Articulo_Horario_informacion',
      desc: '',
      args: [],
    );
  }

  /// `SERVICIO DE ALOJAMIENTO`
  String get Articulo_SERVICIO_DE_ALOJAMIENTO_Titulo {
    return Intl.message(
      'SERVICIO DE ALOJAMIENTO',
      name: 'Articulo_SERVICIO_DE_ALOJAMIENTO_Titulo',
      desc: '',
      args: [],
    );
  }

  /// `Siempre quisiste una atención especial y en Argueta Hotel la tienes. Disfruta tu estadía, nosotros nos encargamos de todo lo demás. Contamos con comodas habitaciones, sencillas, dobles o triple, donde tendras un verdadero descanso en tu camino /n Puedes realizar tu reserva en nuestro motor de reservas oficial de Argueta Hotel donde obtendras los mejores precios`
  String get Articulo_SERVICIO_DE_ALOJAMIENTO_informacion {
    return Intl.message(
      'Siempre quisiste una atención especial y en Argueta Hotel la tienes. Disfruta tu estadía, nosotros nos encargamos de todo lo demás. Contamos con comodas habitaciones, sencillas, dobles o triple, donde tendras un verdadero descanso en tu camino /n Puedes realizar tu reserva en nuestro motor de reservas oficial de Argueta Hotel donde obtendras los mejores precios',
      name: 'Articulo_SERVICIO_DE_ALOJAMIENTO_informacion',
      desc: '',
      args: [],
    );
  }

  /// `Horario de check-in (flexible), desde las 15:00 horas \n Horario de check-out, hasta las 13:00 horas`
  String get Articulo_SERVICIO_DE_ALOJAMIENTO_informacion_02 {
    return Intl.message(
      'Horario de check-in (flexible), desde las 15:00 horas \n Horario de check-out, hasta las 13:00 horas',
      name: 'Articulo_SERVICIO_DE_ALOJAMIENTO_informacion_02',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get Contrasena {
    return Intl.message(
      'Contraseña',
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
