import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/screens/ahadeth_details.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/screens/surah_details.dart';
import 'package:islami_app/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider<MyProvider>(
    create:(context) => MyProvider(),
    child:const IslamiApp()));
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates:const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.language),
      supportedLocales:const [
        Locale('en'), // English
        Locale('ar'),
      ],
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SurahDetails.id: (context) => SurahDetails(),
        AhadethDetails.id: (context) => AhadethDetails()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
