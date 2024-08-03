import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/data/models/hadeth_model.dart';

class AhadethDetails extends StatelessWidget {
  // const AhadethDetails({super.key});
  static String id = 'AhadethDetails';
  List<String> hadethData = [];

  @override
  Widget build(BuildContext context) {
    // var args = ModalRoute.of(context)?.settings.arguments as hadethModel;
    // if (hadethData.isEmpty) {

    // }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      // body: ,
    );
  }

  void hadethLoad(int index) async {
    String file = await rootBundle.loadString('assets/ahades/${index}.txt');
    List<String> hLines = file.split('\n');
    hadethData = hLines;
    print(hLines);
    // List<String> ahadeth = [] ;

    //   List<String> lines =  ahadeth[0].split('\n');
    // String title = lines[0];
    // print(title);
    // lines.removeAt(0);
    // List<String> hadethContent = lines ;
    // hadethData.add(hadethModel(hadethContent, title));
  }
  // void loadFile(int index) async {
  //   String file = await rootBundle!.loadString('assets/files/${index + 1}.txt');
  //   List<String> suraLines = file.split('\n'); // when u see a new line split
  //   SuraIndex = suraLines;
  //   print(suraLines);
  //   setState(() {});
  // }
}
