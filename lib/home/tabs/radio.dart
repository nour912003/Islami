import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class radio extends StatelessWidget {
  const radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 125,
        ),
        Image.asset(
          'assets/images/radio_image.png',
          height: 222,
          width: 412,
        ),
        SizedBox(
          height: 25,
        ),
        Text('إذاعة القرآن الكريم'.tr(),
            style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.skip_previous),
            Icon(
              Icons.play_arrow,
              size: 50,
            ),
            Icon(Icons.skip_next),
          ],
        )
      ]),
    );
  }
}
