import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/colors.dart';
import '../theme/theme.dart';

Widget skillView(BuildContext context) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text(
      "Skills",
      style: titleTextStyle,
    ),
    const SizedBox(height: 16),
    GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3),
      itemBuilder: (context, index) => _gridItem(context, skillsList()[index]),
      itemCount: skillsList().length,
    )
  ]);
}

Widget _gridItem(BuildContext context, Data skill) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.kCaptionColor.withOpacity(0.2),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(skill.title ?? "", style: textStyleBold),
      Text(
        skill.description ?? "",
        style: textStyle,
      )
    ]),
  );
}
