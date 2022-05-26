import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillPercent extends StatelessWidget {
  const SkillPercent(
      { required this.percent, required this.skillName,final Key? key,})
      : super(key: key);

  final double percent;
  final String skillName;

  @override
  Widget build(final BuildContext context)=>CircularPercentIndicator(
        radius: 55.0,
        lineWidth: 8.0,
        percent: percent,
        arcBackgroundColor: Colors.transparent,
        arcType: ArcType.FULL,
        startAngle: 30,
        center: Text(
          '${percent*100}%',
          style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
              color: Colors.white),
        ),
        footer: Text(
          skillName,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.white),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.greenAccent,
        backgroundColor: Colors.white,
  );
}
