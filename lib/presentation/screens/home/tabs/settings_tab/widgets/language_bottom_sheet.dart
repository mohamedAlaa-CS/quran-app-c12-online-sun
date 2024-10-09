import "package:flutter/material.dart";

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemThemeWidget("English"),
          SizedBox(
            height: 8,
          ),
          buildUnSelectedItemThemeWidget('العربيه')
        ],
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedLang) {
    return Row(
      children: [
        Text(selectedLang, style: Theme.of(context).textTheme.displayMedium),
        Spacer(),
        Icon(
          Icons.check,
          color: Colors.white,
          size: 28,
        )
      ],
    );
  }

  Widget buildUnSelectedItemThemeWidget(String unSelectedLang) {
    return Text(
      unSelectedLang,
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(color: Colors.black),
    );
  }
}
