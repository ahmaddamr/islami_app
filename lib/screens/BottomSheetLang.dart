import 'package:flutter/material.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/theme.dart';
import 'package:provider/provider.dart';

class BottomSheetLang extends StatelessWidget {
  const BottomSheetLang({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(15),
      child: 
      Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('English', style: MyThemeData.lightTheme.textTheme.bodyLarge ,),
              const SizedBox(width: 30,),
              IconButton(onPressed: () {
                provider.changeLanguage('en');
                Icon(Icons.check_box);
              }, icon:const Icon(Icons.done_outline_rounded))
            ],
            
          ),
          const Divider(
            thickness: 1,
            color: MyThemeData.primaryColor,
          ),
          Row(
            children: [
              Text('Arabic', style: MyThemeData.lightTheme.textTheme.bodyLarge ,),
              const SizedBox(width: 42,),
              IconButton(onPressed: () {
                provider.changeLanguage('ar');
                Icon(Icons.check_box);
              }, icon:const Icon(Icons.done_outline_rounded))
            ],
          )
        ],
      ),
    );
  }
}