import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/presentation/modules/screens/ahadeth_details.dart';
import 'package:islami_app/data/models/hadeth_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class ahadesTab extends StatelessWidget {
  // const ahadesTab({super.key});
  static String id = 'QuranTab';
  List<hadethModel> hadethData = [];
  List<String> hadethNum = [
    "1حديث رقم",
    "حديث رقم2",
    "حديث رقم3",
    "حديث رقم4",
    "حديث رقم5",
    "حديث رقم6",
    "حديث رقم7",
    "حديث رقم8",
    "حديث رقم9",
    "حديث رقم10",
    "حديث رقم11",
    "حديث رقم12",
    "حديث رقم13",
    "حديث رقم14",
    "حديث رقم15",
    "حديث رقم16",
    "حديث رقم17",
    "حديث رقم18",
    "حديث رقم19",
    "حديث رقم20",
    "حديث رقم21",
    "حديث رقم22",
    "حديث رقم23",
    "حديث رقم24",
    "حديث رقم25",
    "حديث رقم26",
    "حديث رقم27",
    "حديث رقم28",
    "حديث رقم29",
    "حديث رقم30",
    "حديث رقم31",
    "حديث رقم32",
    "حديث رقم33",
    "حديث رقم34",
    "حديث رقم35",
    "حديث رقم36",
    "حديث رقم37",
    "حديث رقم38",
    "حديث رقم39",
    "حديث رقم40",
    "حديث رق41",
    "حديث رقم42",
    "حديث رقم43",
    "حديث رقم44",
    "حديث رقم45",
    "حديث رقم46",
    "حديث رقم47",
    "حديث رقم48",
    "حديث رقم49",
    "حديث رقم50",
  ];
  @override
  Widget build(BuildContext context) {
    // if (hadethData.isEmpty) {
    //   hadethLoad();
    // }
    var provider = Provider.of<MyProvider>(context);
    var color = provider.isDarkMode ? Colors.white : Colors.black;
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_ic.png')),
        const Divider(
          thickness: 2,
          color: Color(0xffB7935F),
        ),
        Text(
          AppLocalizations.of(context)!.hadeth,
          style:
              GoogleFonts.elMessiri(fontWeight: FontWeight.bold, fontSize: 20,color: color),
        ),
        const Divider(
          thickness: 2,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                color: Color(0xffB7935F),
                thickness: 1,
                endIndent: 40,
                indent: 40,
              );
            },
            itemBuilder: (context, index) {
              return Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context, AhadethDetails.id,
                      // arguments: hadethData[index]
                    );
                  },
                  child: Text(
                    hadethNum[index],
                    style: GoogleFonts.elMessiri(
                        fontSize: 17, fontWeight: FontWeight.bold,color: color),
                  ),
                ),
              );
            },
            itemCount: hadethNum.length,
          ),
        )
      ],
    );
  }
}
