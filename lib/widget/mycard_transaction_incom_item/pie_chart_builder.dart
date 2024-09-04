import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/models/piechart_model.dart';

class PieChartBuilder extends StatefulWidget {
  const PieChartBuilder({super.key});

  @override
  State<PieChartBuilder> createState() => _PieChartBuilderState();
}

class _PieChartBuilderState extends State<PieChartBuilder> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (p0, pieTouchResponse) {
                var currentIndex =
                    pieTouchResponse?.touchedSection?.touchedSectionIndex;
                if (activeIndex != currentIndex) {
                  activeIndex = currentIndex ?? -1;

                  setState(() {});
                }
              },
            ),
            sectionsSpace: 0.0,
            sections: sectionGenrator(activeIndex: activeIndex),
          ),
        ),
      ),
    );
  }

  sectionGenrator({required int activeIndex}) {
    List<PiechartModel> pieModel = [
      PiechartModel(value: 22, color: const Color(0xFFE2DECD)),
      PiechartModel(value: 20, color: const Color(0xFF064061)),
      PiechartModel(value: 25, color: const Color(0xFF4EB7F2)),
      PiechartModel(value: 40, color: const Color(0xFF208CC8)),
    ];
    var pie = List<PieChartSectionData>.generate(4, (index) {
      return PieChartSectionData(
        value: pieModel[index].value,
        color: pieModel[index].color,
        radius: activeIndex == index ? 30 : 24,
        showTitle: false,
      );
    });
    return pie;
  }
}
