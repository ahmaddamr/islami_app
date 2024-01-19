import 'package:flutter/material.dart';
import 'package:islami_app/models/surah_model.dart';
import 'package:islami_app/tabs/quran_tab.dart';

class SurahDetails extends StatelessWidget {
  const SurahDetails({super.key});
  static String id = 'SurahDetails' ;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel ;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
      ),
    );
  }
}