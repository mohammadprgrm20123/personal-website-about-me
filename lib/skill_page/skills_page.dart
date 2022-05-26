import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';
import '../utils/utils.dart';
import 'widgets/skill_percent.dart';

class SkillsPage extends GetView<HomeController> {
  const SkillsPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
    backgroundColor: Utils.backgroundColor,
    body: SingleChildScrollView(
      controller: controller.scrollController,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 100,
          ),
          title(),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            runSpacing: 30,
            spacing: 50,
            children: const [
              SkillPercent(percent: .9, skillName: 'RestFull'),
              SkillPercent(percent: .8, skillName: 'MVC Architecture'),
              SkillPercent(percent: .7, skillName: 'Flutter'),
              SkillPercent(percent: .7, skillName: 'Dart'),
              SkillPercent(percent: .6, skillName: 'Java'),
              SkillPercent(percent: .6, skillName: 'Git'),
              SkillPercent(percent: .6, skillName: 'TDD'),
              SkillPercent(percent: .6, skillName: 'Android (Native)'),
              SkillPercent(percent: .6, skillName: 'Refactoring'),
              SkillPercent(percent: .6, skillName: 'Material Design'),
              SkillPercent(percent: .6, skillName: 'Design Pattern'),
              SkillPercent(percent: .5, skillName: 'Agile / Scrum'),
              SkillPercent(percent: .4, skillName: 'GraphQl'),
              SkillPercent(percent: .4, skillName: 'Scraping'),

            ],
          )
        ],
      ),
    ),
  );

  Widget title() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Skills',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Developing On',
              style: GoogleFonts.poppins(
                  color: Colors.greenAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
