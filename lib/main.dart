import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:turizm/splash-screen/onboarding-one.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      title: '',
      home: OnBoardingOne(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        // DefaultCupertinoLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate, // Here !
        DefaultWidgetsLocalizations.delegate,
      ],
      locale: Locale('ru_RU'),
      supportedLocales: [
         Locale('ru', 'RU'),
      ],
    );
  }
}
