import 'package:flutter/material.dart';
import 'package:islami_app/core/theme.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetTheme extends StatelessWidget {
  const BottomSheetTheme({super.key});

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
              Text('Light', style: MyThemeData.lightTheme.textTheme.bodyLarge),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                onPressed: () {
                  provider.changeTheme(ThemeMode.light);
                },
                icon: Icon(
                  Icons.done_outline_rounded,
                  color: provider.themeMode == ThemeMode.light
                      ? MyThemeData.primaryColor
                      : MyThemeData.SecondColor,
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: MyThemeData.primaryColor,
          ),
          Row(
            children: [
              Text('Dark', style: MyThemeData.lightTheme.textTheme.bodyLarge),
              const SizedBox(
                width: 42,
              ),
              IconButton(
                onPressed: () {
                  provider.changeTheme(ThemeMode.dark);
                },
                icon: Icon(
                  Icons.done_outline_rounded,
                  color: provider.themeMode == ThemeMode.dark
                      ? MyThemeData.primaryColor
                      : MyThemeData.SecondColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
