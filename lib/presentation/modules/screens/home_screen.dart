import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theme.dart';
import 'package:islami_app/presentation/modules/tabs/ahades_tab.dart';
import 'package:islami_app/presentation/modules/tabs/quran_tab.dart';
import 'package:islami_app/presentation/modules/tabs/radio_tab.dart';
import 'package:islami_app/presentation/modules/tabs/sebha_tab.dart';
import 'package:islami_app/presentation/modules/tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    ahadesTab(),
    sebhaTab(),
    const radioTab(),
    const settingsTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/bg3.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.appTitle,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentIndex,
          onTap: (value) {
            CurrentIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/quran.png'),
                  size: 30,
                ),
                backgroundColor: MyThemeData.primaryColor,
                label: 'quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/ahades.png'),
                  size: 30,
                ),
                backgroundColor: MyThemeData.primaryColor,
                label: 'ahades'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/sebha.png'),
                  size: 30,
                ),
                backgroundColor: MyThemeData.primaryColor,
                label: 'sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/radio.png'),
                  size: 30,
                ),
                backgroundColor: MyThemeData.primaryColor,
                label: 'radio'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                backgroundColor: MyThemeData.primaryColor,
                label: 'settings'),
          ],
          selectedItemColor: Colors.black,
          // backgroundColor: MyThemeData.primaryColor,
          // fixedColor: Color(0xffB7935F),
        ),
        body: tabs[CurrentIndex],
      )
    ]);
  }
}
