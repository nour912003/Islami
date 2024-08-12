import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/MyThemMode.dart';
import 'package:provider/provider.dart';

import 'ProviderThem/MyProviderThem.dart';
import 'ahadeth_model.dart';

class ahadethDetails extends StatelessWidget {
  static const String routeName = "ahadethDetails";
  ahadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var Model = ModalRoute.of(context)?.settings.arguments as AhadethModel;
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(provider.mode == ThemeMode.light
            ? 'assets/images/default_bg.png'
            : 'assets/images/dark_bg.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              Model.title,
            ),
          ),
          body: Card(
            margin: EdgeInsets.all(15),
            color: Theme.of(context).primaryColor,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(Model.content[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium);
                  },
                  itemCount: Model.content.length),
            ),
          ),
        ),
      ],
    );
  }
}
