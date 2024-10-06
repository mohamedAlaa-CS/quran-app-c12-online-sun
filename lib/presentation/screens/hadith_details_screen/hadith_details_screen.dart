import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../core/assets_manager.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadithArgs = ModalRoute.of(context)?.settings.arguments as Hadith;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.mainBgLight,
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        body: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hadithArgs.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white, fontSize: 22)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  color: Theme.of(context).indicatorColor,
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    hadithArgs.content,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
