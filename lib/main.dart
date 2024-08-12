import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/ProviderThem/MyProviderThem.dart';
import 'package:islami/home/ahadeth_details.dart';
import 'package:islami/home/home.dart';
import 'package:islami/home/suraDetails.dart';
import 'package:provider/provider.dart';

import 'home/MyThemMode.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      ChangeNotifierProvider(
      create: (context) => MyProvider(), child: EasyLocalization(
          supportedLocales: [Locale('ar'), Locale('en')],
          path: 'assets/translations',

          child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: provider.mode,
      theme: MyThemMode.LightThem,
      darkTheme: MyThemMode.DarkThem,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetails.routName: (context) => SuraDetails(),
        ahadethDetails.routeName: (context) => ahadethDetails(),
      },
    );
  }
}
