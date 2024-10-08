import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/surah_details.dart';
import 'package:islami_app/theme.dart';

class QuranTab extends StatelessWidget {
  // const QuranTab({super.key});
  static String id = 'QuranTab';
  int CurrentIndex = 0;
  List<String> SuraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return
        // Stack(
        //   children: [
        //     Image.asset(
        //       'assets/images/bg3.png',
        //       width: double.infinity,
        //       fit: BoxFit.fill,
        //     ),
        //     Scaffold(
        //       backgroundColor: Colors.transparent,
        //       appBar: AppBar(
        //         elevation: 0,
        //         backgroundColor: Colors.transparent,
        //         centerTitle: true,
        //         title: Text('islami',
        //             style: Theme.of(context).textTheme.bodyLarge ),
        //       ),
        //       bottomNavigationBar: BottomNavigationBar(
        //         currentIndex: CurrentIndex,
        //         onTap: (value)
        //         {
        //           CurrentIndex = value ;
        //           // setState(() {

        //           // });
        //         },
        //         items: const[
        //           BottomNavigationBarItem(
        //               icon: ImageIcon(
        //                 AssetImage('assets/images/quran.png'),
        //                 size: 30,
        //               ),backgroundColor: MyThemeData.primaryColor,
        //               label: 'quran'),
        //           BottomNavigationBarItem(
        //               icon: ImageIcon(
        //                 AssetImage('assets/images/ahades.png'),
        //                 size: 30,
        //               ),backgroundColor: MyThemeData.primaryColor,
        //               label: 'ahades'),
        //           BottomNavigationBarItem(
        //               icon: ImageIcon(
        //                 AssetImage('assets/images/sebha.png'),
        //                 size: 30,
        //               ),backgroundColor: MyThemeData.primaryColor,
        //               label: 'sebha'),
        //           BottomNavigationBarItem(
        //               icon: ImageIcon(
        //                 AssetImage('assets/images/radio.png'),
        //                 size: 30,
        //               ),backgroundColor: MyThemeData.primaryColor,
        //               label: 'radio'),
        //           BottomNavigationBarItem(
        //               icon: Icon(
        //                 Icons.settings,
        //                 size: 30,
        //               ),backgroundColor: MyThemeData.primaryColor,
        //               label: 'settings'),
        //         ],
        //         selectedItemColor: Colors.black,
        //         backgroundColor: Color(0xffB7935F),
        //         // fixedColor: Color(0xffB7935F),
        //       ),
        // body:
        Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Image.asset('assets/images/main_ic.png')),
        const Divider(
          thickness: 2,
          color: Color(0xffB7935F),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sura Names',
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
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
                  onTap: ()
                  {
                    Navigator.pushNamed(context, SurahDetails.id);
                  },
                  child: Text(
                    SuraName[index],
                    style: GoogleFonts.elMessiri(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              );
            },
            itemCount: SuraName.length,
          ),
        )
      ],
    );
    //     ),
    //   ],
    // );
  }
}
