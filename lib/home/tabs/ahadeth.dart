import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/MyThemMode.dart';
import 'package:islami/home/ahadeth_details.dart';

import '../ahadeth_model.dart';

class ahadeth extends StatefulWidget {
  ahadeth({super.key});

  @override
  State<ahadeth> createState() => _ahadethState();
}

class _ahadethState extends State<ahadeth> {
  List<AhadethModel> Allahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Allahadeth.isEmpty) {
      loadFileDetails();
    }
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "assets/images/hadeth_logo.png",
          height: 219,
          width: 312,
        ),
        Divider(),
        Text("الأحاديث".tr(), style: Theme.of(context).textTheme.bodyLarge),
        Divider(),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ahadethDetails.routeName,
                        arguments: Allahadeth[index]);
                  },
                  child: Text(Allahadeth[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  indent: 60,
                  endIndent: 60,
                );
              },
              itemCount: Allahadeth.length),
        )
      ],
    ));
  }

  loadFileDetails() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> Ahadeth = value.split("#");
      for (int i = 0; i < Ahadeth.length; i++) {
        String Hadethone = Ahadeth[i];
        List<String> hadethlines = Hadethone.trim().split("\n");
        String title = hadethlines[0];
        hadethlines.removeAt(0);
        List<String> content = hadethlines;
        AhadethModel ahadethModel = AhadethModel(title, content);
        Allahadeth.add(ahadethModel);
      }
      setState(() {});
    });
  }
}
