import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/ProviderThem/MyProviderThem.dart';
import 'package:provider/provider.dart';

class ThemSheet extends StatelessWidget {
  const ThemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      pro.changeThem(ThemeMode.light);
                    },
                    child: Text("Light".tr(),
                        style: Theme.of(context).textTheme.bodyMedium)),
                Icon(Icons.done,color: Colors.black),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      pro.changeThem(ThemeMode.dark);
                    },
                    child: Text("Dark".tr(),
                        style: Theme.of(context).textTheme.bodyMedium)),
                Icon(Icons.done,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
