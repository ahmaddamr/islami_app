import 'package:flutter/material.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/core/theme.dart';
import 'package:provider/provider.dart';

class BottomSheetLang extends StatelessWidget {
  const BottomSheetLang({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'English',
                style: provider.language == 'en'
                    ? MyThemeData.lightTheme.textTheme.bodyLarge!
                        .copyWith(color: MyThemeData.primaryColor)
                    : MyThemeData.lightTheme.textTheme.bodyLarge!
                        .copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {
                    provider.changeLanguage('en');
                  },
                  icon: Icon(
                    Icons.done_outline_rounded,
                    color: provider.language == 'en'
                        ? MyThemeData.primaryColor
                        : MyThemeData.SecondColor,
                  ),)
            ],
          ),
          const Divider(
            thickness: 1,
            color: MyThemeData.primaryColor,
          ),
          Row(
            children: [
              Text(
                'Arabic',
                style: provider.language == 'ar'
                    ? MyThemeData.lightTheme.textTheme.bodyLarge!
                        .copyWith(color: MyThemeData.primaryColor)
                    : MyThemeData.lightTheme.textTheme.bodyLarge!
                        .copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 42,
              ),
              IconButton(
                  onPressed: () {
                    provider.changeLanguage('ar');
                    const Icon(Icons.check_box);
                  },
                  icon: Icon(
                    Icons.done_outline_rounded,
                    color: provider.language == 'ar'
                        ? MyThemeData.primaryColor
                        : MyThemeData.SecondColor,
                  ),)
            ],
          )
        ],
      ),
    );
  }
}
