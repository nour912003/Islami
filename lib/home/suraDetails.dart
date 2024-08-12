import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/MyThemMode.dart';
import 'package:islami/home/ProviderThem/MyProviderThem.dart';
import 'package:islami/home/suraModel.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = "SuraDetails";
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var Model = ModalRoute.of(context)?.settings.arguments as suraModel;
    loadSuraFile(Model.index);
    var provider =Provider.of<MyProvider>(context);
    return Stack(children: [
      Image(
        image: AssetImage(provider.mode==ThemeMode.light?
        'assets/images/default_bg.png':
        'assets/images/dark_bg.png'),
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            Model.Name,
          ),
        ),
        body: Card(
          margin: EdgeInsets.all(15),
          color: Theme.of(context).primaryColor,
          shadowColor: blackColor,
          elevation: 50,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(verses[index],
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyMedium
                      );
                },
                itemCount: verses.length),
          ),
        ),
      ),
    ]);
  }

  loadSuraFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = sura.split("\n");
    verses = suraLines;
    setState(() {});
  }
}
