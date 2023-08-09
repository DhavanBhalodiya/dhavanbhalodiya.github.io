import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/utils/utils.dart';

Widget footer() {
  return Container(
    color: AppColors.kCaptionColor.withOpacity(0.2),
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Copyright (c) 2023 Dhavan B. All rights Reserved",
            style: GoogleFonts.abel(
                textStyle: textStyle.copyWith(color: AppColors.kCaptionColor))),
      ],
    ),
  );
}
