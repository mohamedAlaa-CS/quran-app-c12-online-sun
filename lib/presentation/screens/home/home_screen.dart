import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_sun/core/assets_manager.dart';
import 'package:quran_app_c12_online_sun/core/colors_manager.dart';
import 'package:quran_app_c12_online_sun/core/strings_manger.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/home/tabs/tasbeh_tab/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.mainBgLight,
              ))),
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              StringsManager.appTitle,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                // 1
                selectedIndex = index; // 1
                setState(() {});
              },
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: ColorsManager.goldColor,
                    icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                    label: StringsManager.quranLabel),
                BottomNavigationBarItem(
                    backgroundColor: ColorsManager.goldColor,
                    icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                    label: StringsManager.hadithLabel),
                BottomNavigationBarItem(
                    backgroundColor: ColorsManager.goldColor,
                    icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                    label: StringsManager.tasbehLabel),
                BottomNavigationBarItem(
                    backgroundColor: ColorsManager.goldColor,
                    icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                    label: StringsManager.radioLabel),
                BottomNavigationBarItem(
                    backgroundColor: ColorsManager.goldColor,
                    icon: Icon(Icons.settings),
                    label: StringsManager.settingsLabel)
              ]),
          body: tabs[selectedIndex]),
    );
  }
}
