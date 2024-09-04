import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/models/piechart_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class CustomPieChartBuilder extends StatefulWidget {
  const CustomPieChartBuilder({super.key});

  @override
  State<CustomPieChartBuilder> createState() => _CustomPieChartBuilderState();
}

class _CustomPieChartBuilderState extends State<CustomPieChartBuilder> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }

  sectionGenrator({required int activeIndex}) {
    List<PiechartModel> pieModel = [
      PiechartModel(title: "other", value: 22, color: const Color(0xFFE2DECD)),
      PiechartModel(
          title: "Product royalti", value: 20, color: const Color(0xFF064061)),
      PiechartModel(
          title: "Design product", value: 25, color: const Color(0xFF4EB7F2)),
      PiechartModel(
          title: "Design service", value: 40, color: const Color(0xFF208CC8)),
    ];
    var pie = List<PieChartSectionData>.generate(4, (index) {
      return PieChartSectionData(
        titleStyle: AppStyles.styleSemiBold16(context).copyWith(
            color: index == 0
                ? null
                : activeIndex == index
                    ? null
                    : Colors.white),
        title: activeIndex == index ? pieModel[index].title : null,
        titlePositionPercentageOffset:
            (index == 1 && activeIndex == index) ? 1.4 : null,
        value: pieModel[index].value,
        color: pieModel[index].color,
        radius: activeIndex == index ? 50 : 40,
        showTitle: true,
      );
    });
    return pie;
  }
}
