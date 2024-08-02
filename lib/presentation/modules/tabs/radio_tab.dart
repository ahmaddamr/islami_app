import 'package:flutter/material.dart';
import 'package:islami_app/core/theme.dart';

class radioTab extends StatelessWidget {
  const radioTab({super.key});
  static String id = 'QuranTab';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Center(
                child: Image.asset(
                    'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png')),
          ),
          const Text('ازاعة القرأن الكريم'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous,
                    size: 60,
                    color: MyThemeData.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 60,
                    color: MyThemeData.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_next,
                    size: 60,
                    color: MyThemeData.primaryColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
