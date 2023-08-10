import 'package:flutter/material.dart';
import 'package:portfolio/screens/footer.dart';
import 'package:portfolio/screens/header.dart';
import 'package:portfolio/screens/skills_screen.dart';
import 'package:portfolio/theme/theme.dart';
import '../utils/utils.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topHeader(),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _aboutMeView(),
                  _projectView(),
                  skillView(context),
                  const SizedBox(height: 16),
                  footer(),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _aboutMeView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Me",
          style: titleTextStyle,
        ),
        const SizedBox(height: 16),
        Text(
          "A Mobile Applications Developer with experience of 7 years in the mobile industry for developing, planning, designing, implementing, maintaining with Flutter as well Android Native.Experienced in working with clients, business managers, and technical teams for executing concurrent projects. Good understanding of implementing design patterns such as Singleton Pattern, and Adapter Design Pattern.",
          style: textStyle.copyWith(fontSize: 20),
        )
      ],
    );
  }

  Widget _projectView() {
    return Column(children: [
      Text(
        "Projects",
        style: titleTextStyle,
      ),
    ]);
  }
}
