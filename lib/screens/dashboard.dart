import 'package:flutter/material.dart';
import 'package:portfolio/screens/footer.dart';
import 'package:portfolio/screens/header.dart';
import '../utils/utils.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [topHeader(), footer()],
      ),
    );
  }
}
