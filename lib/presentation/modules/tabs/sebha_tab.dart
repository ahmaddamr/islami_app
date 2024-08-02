import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sebhaTab extends StatefulWidget {
  // const sebhaTab({super.key});
  static String id = 'sebhaTab';

  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int count = 0 ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
              Center(child: Image.asset('assets/images/body@2x.png')),
              const SizedBox(
                height: 10,
              ),
              Text(AppLocalizations.of(context)!.numberoftasbeeh,
              style: GoogleFonts.elMessiri(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration:const BoxDecoration(
                    color: Color(0xffB7935F)
                  ),
                  child: Center(child: Text('$count',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style:const ButtonStyle(
                      iconSize: MaterialStatePropertyAll(20),
                      backgroundColor: MaterialStatePropertyAll(Color(0xffB7935F)),
                    ),
                    onPressed: () {
                      count++;
                      setState(() {
                        
                      });
                    }, child: Text('سبحان الله',style: GoogleFonts.elMessiri(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                    style:const ButtonStyle(
                      iconSize: MaterialStatePropertyAll(20),
                      backgroundColor: MaterialStatePropertyAll(Color(0xffB7935F)),
                    ),
                    onPressed: () {
                      count=0;
                      setState(() {
                        
                      });
                    }, child: Text('Reset',style: GoogleFonts.elMessiri(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)),

      ],
    );
    
  }
}