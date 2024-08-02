import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theme.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/presentation/modules/screens/BottomSheetLang.dart';
import 'package:islami_app/presentation/modules/screens/BottomSheetTheme.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class settingsTab extends StatelessWidget {
  const settingsTab({super.key});
  static String id = 'settingsTab';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(provider.language == 'ar' ? 'اللغه:' : 'language:',
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold)),
          InkWell(
            onTap: () {
              showBottomSheetLanguage(context);
            },
            child: Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(7),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(provider.language == 'ar' ? 'العربيه' : 'English',
                  style: GoogleFonts.elMessiri(
                      fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(provider.language == 'ar' ? 'السمه' : 'theme:',
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold)),
          InkWell(
            onTap: () {
              showBottomSheetTheme(context);
            },
            child: Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(7),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text('Light',
                  style: GoogleFonts.elMessiri(
                      fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }

  showBottomSheetLanguage(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return const BottomSheetLang();
        });
  }

  showBottomSheetTheme(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return const BottomSheetTheme();
        });
  }
}
