import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/ProviderThem/MyProviderThem.dart';
import 'package:islami/home/tabs/ahadeth.dart';
import 'package:islami/home/tabs/quran.dart';
import 'package:islami/home/tabs/radio.dart';
import 'package:islami/home/tabs/sebha.dart';
import 'package:islami/home/tabs/setting.dart';
import 'package:provider/provider.dart';

import 'MyThemMode.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image(
          image: AssetImage(provider.mode == ThemeMode.light
              ? 'assets/images/default_bg.png'
              : 'assets/images/dark_bg.png'),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "إسلامي".tr(),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'الراديو'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'التسبيح'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                  ),
                  label: 'الأحاديث'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: 'القرآن'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "الاعدادات".tr(),
                ),
              ]),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    radio(),
    sebha(),
    ahadeth(),
    quran(),
    setting(),
  ];
}
