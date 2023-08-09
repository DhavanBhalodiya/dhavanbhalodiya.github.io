import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constant.dart';
import '../theme/theme.dart';
import '../utils/utils.dart';

Widget topHeader() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        RichText(
            text: TextSpan(
                text: "Dhavan",
                style: GoogleFonts.abel(
                    textStyle:
                        textStyle.copyWith(fontSize: 30, letterSpacing: 0.9)),
                children: <TextSpan>[
              TextSpan(
                  text: " Bhalodiya",
                  style: GoogleFonts.abel(
                      textStyle: textStyle.copyWith(
                    color: AppColors.colorPrimary,
                    fontSize: 30,
                    letterSpacing: 0.9,
                  )))
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
    ),
  );
}

void openUrlInNewTab(String url) {
  window.open(url, '_blank');
}
