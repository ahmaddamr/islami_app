import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/screens/ahadeth_details.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/screens/surah_details.dart';
import 'package:islami_app/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
            AppLocalizations.delegate, 
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('en'), // English
    Locale('ar'), 
  ],
      
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SurahDetails.id:(context) => SurahDetails(),
        AhadethDetails.id:(context) => AhadethDetails()

      },
      debugShowCheckedModeBanner: false,
      
    );
  }
}
