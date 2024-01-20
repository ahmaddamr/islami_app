import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/screens/BottomSheetLang.dart';
import 'package:islami_app/theme.dart';
import 'package:provider/provider.dart';

class settingsTab extends StatelessWidget {
  const settingsTab({super.key});
  static String id = 'settingsTab';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('language:',
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold)),
        InkWell(
          onTap: () {
            showBottomSheetLanguage(context);
          },
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(7),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: MyThemeData.primaryColor)),
            child: Text(provider.language=='ar'?'Arabic':'English',
                style: GoogleFonts.elMessiri(
                    fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text('theme:',
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(7),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: MyThemeData.primaryColor)),
          child: Text('Light',
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }

  showBottomSheetLanguage(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheetLang();
        });
  }
}
