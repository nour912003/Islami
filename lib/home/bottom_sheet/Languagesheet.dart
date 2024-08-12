import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
                    context.setLocale(Locale("ar"));
                  },
                  child: Text("Arabic".tr(),
                      style: context.locale == Locale("ar")
                          ? Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color:Colors.white)
                          : Theme.of(context).textTheme.bodyMedium),
                ),
                context.locale == Locale("ar")?Icon(Icons.done,color: Colors.white,):SizedBox(),
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
                      context.setLocale(Locale("en"));
                    },
                    child: Text("English".tr(),
                        style: context.locale == Locale("en")
                            ? Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)
                            : Theme.of(context).textTheme.bodyMedium)),


              context.locale == Locale("en")?Icon(Icons.done,color: Colors.white,):SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
