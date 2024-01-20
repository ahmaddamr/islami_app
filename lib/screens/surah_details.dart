import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/models/surah_model.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/theme.dart';

class SurahDetails extends StatefulWidget {
  // const SurahDetails({super.key});
  static String id = 'SurahDetails';

  @override
  State<SurahDetails> createState() => _SurahDetailsState();
}

class _SurahDetailsState extends State<SurahDetails> {
  List<String> SuraIndex = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (SuraIndex.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg3.png',
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              args.name,
              style: GoogleFonts.elMessiri(fontSize: 30, color: Colors.black),
            ),
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: MyThemeData.primaryColor,
              );
            },
            itemBuilder: (context, index) {
              return Center(
                  child: Text(
                SuraIndex[index],
                style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ));
            },
            itemCount: SuraIndex.length,
          ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String file = await rootBundle!.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = file.split('\n'); // when u see a new line split
    SuraIndex = suraLines;
    print(suraLines);
    setState(() {});
  }
}
