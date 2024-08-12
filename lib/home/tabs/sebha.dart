import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../ProviderThem/MyProviderThem.dart';

class sebha extends StatefulWidget {
   sebha({super.key});

  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  List<String> tsabeh=["سبحان الله","الحمدلله","الله اكبر"];
  int index=0;
  int count =0;
  double angle=0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image(
                image: AssetImage(provider.mode == ThemeMode.light
                    ? 'assets/images/head_sebha_logo.png'
                    : 'assets/images/head_sebha_dark.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 79),
                child: Transform.rotate(
                  angle: angle,
                  child: InkWell(
                    onTap: () {
                      onTap();


                    },
                    child: Image(
                      image: AssetImage(provider.mode == ThemeMode.light
                          ? 'assets/images/body_sebha_logo.png'
                          : 'assets/images/body_sebha_dark.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 39,
          ),
          Text(
            "عدد التسبيحات".tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColor,
              ),
              alignment: Alignment.center,
              child: Text('$count'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColor,
              ),
              alignment: Alignment.center,
              child: Text('${tsabeh[index]}'),
            ),
          ),
        ],
      ),
    );
  }

  onTap(){
    count++;
    if(count %33==0){
      index++;
      count=0;
    }
    if(index==3)
      {
        index=0;
      }
    angle+=1;
    setState(() {});
  }
}
