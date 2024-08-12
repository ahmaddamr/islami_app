import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/core/theme.dart';
import 'package:islami_app/data/local/cache_helper.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/presentation/modules/screens/ahadeth_details.dart';
import 'package:islami_app/presentation/modules/screens/home_screen.dart';
import 'package:islami_app/presentation/modules/screens/surah_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  var lastTheme = CacheHelper.getData(key: 'theme');
  print(lastTheme);
  ThemeMode themeMode;
  if (lastTheme == true) {
    themeMode = ThemeMode.light;
  } else {
    themeMode = ThemeMode.dark;
  }

  runApp(
    ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: IslamiApp(
        myTheme: themeMode,
      ),
    ),
  );
}

class IslamiApp extends StatelessWidget {
  IslamiApp({super.key, required this.myTheme});
  final ThemeMode myTheme;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      builder: (context, child) {
        var provider = Provider.of<MyProvider>(context);
        return MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale(provider.language),
          supportedLocales: const [
            Locale('en'), // English
            Locale('ar'),
          ],
          theme: MyThemeData.lightTheme,
          darkTheme: MyThemeData.darkTheme,
          themeMode: myTheme,
          initialRoute: HomeScreen.id,
          routes: {
            HomeScreen.id: (context) => const HomeScreen(),
            SurahDetails.id: (context) => SurahDetails(),
            AhadethDetails.id: (context) => AhadethDetails()
          },
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
