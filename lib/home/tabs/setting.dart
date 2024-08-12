import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/MyThemMode.dart';
import 'package:islami/home/bottom_sheet/Languagesheet.dart';
import 'package:islami/home/bottom_sheet/Themsheet.dart';

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Them".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ThemSheet();
                  },
                );
              },
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Light'.tr(),
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: primaryColor)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Language".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return LanguageSheet();
                  },
                );
              },
              child: Container(

                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Arabic'.tr(),
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: primaryColor)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
