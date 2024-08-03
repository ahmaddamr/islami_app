import 'package:flutter/material.dart';
import 'package:islami_app/core/theme.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetTheme extends StatelessWidget {
  const BottomSheetTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    
    var color = provider.isDarkMode ? Colors.white : Colors.black;
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Text(provider.isDarkMode ? 'Dark Mode' : 'Light Mode',),
              const SizedBox(
                width: 20,
              ),
              Switch(
                value: provider.isDarkMode,
                onChanged: (value) {
                  provider.toggleTheme(value);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
// Column(
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Light', style: MyThemeData.lightTheme.textTheme.bodyLarge),
//               const SizedBox(
//                 width: 30,
//               ),
//               IconButton(
//                 onPressed: (value) {
//                   provider.toggleTheme(value);
//                 },
//                 icon: Icon(
//                   Icons.done_outline_rounded,
//                   color: provider.themeMode == ThemeMode.light
//                       ? MyThemeData.primaryColor
//                       : MyThemeData.SecondColor,
//                 ),
//               )
//             ],
//           ),
//           const Divider(
//             thickness: 1,
//             color: MyThemeData.primaryColor,
//           ),
//           Row(
//             children: [
//               Text('Dark', style: MyThemeData.lightTheme.textTheme.bodyLarge),
//               const SizedBox(
//                 width: 42,
//               ),
//               IconButton(
//                 onPressed: () {
//                   provider.changeTheme(ThemeMode.dark);
//                 },
//                 icon: Icon(
//                   Icons.done_outline_rounded,
//                   color: provider.themeMode == ThemeMode.dark
//                       ? MyThemeData.primaryColor
//                       : MyThemeData.SecondColor,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
