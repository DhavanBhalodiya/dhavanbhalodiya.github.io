import 'dart:html';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant.dart';
import '../theme/theme.dart';
import '../utils/utils.dart';

Widget topHeader() {
  return Row(
    children: [
      RichText(
          text: TextSpan(
              text: "Dhavan",
              style: textStyle.copyWith(fontSize: 30, letterSpacing: 0.9),
              children: <TextSpan>[
            TextSpan(
                text: " Bhalodiya",
                style: textStyle.copyWith(
                  color: AppColors.colorPrimary,
                  fontSize: 30,
                  letterSpacing: 0.9,
                ))
          ])),
      const Spacer(),
      Text("My Intro", style: textStyle),
      const SizedBox(width: 20),
      Text("Projects", style: textStyle),
      const SizedBox(width: 20),
      Text("Skills", style: textStyle),
      const SizedBox(width: 20),
      GestureDetector(
          child: Text("Blog", style: textStyle),
          onTap: () => openUrlInNewTab(blogUrl)),
      const SizedBox(width: 20),
      ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.redColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text("Contact Us", style: buttonTextStyle))
    ],
  );
}

void openUrlInNewTab(String url) {
  window.open(url, '_blank');
}
