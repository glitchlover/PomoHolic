import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/database/pomoticaRecordCrud.dart';
import 'package:pomotica/model/pomoticaRecordModel.dart';
import 'package:pomotica/widget/myAppBar.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  LineChartData weeklyChart() {
    return LineChartData(
        minX: 1,
        maxX: 7,
        minY: 1,
        maxY: maxTimeSpent().toDouble(),
        gridData: gridData(),
        titlesData: titlesData(),
        borderData: FlBorderData(show: false),
        // backgroundColor: MyColors.appBackgroundColor,
        lineBarsData: [lineChartBarData()]);
  }

  FlGridData gridData() {
    return FlGridData(
      show: false,
      // verticalInterval: 2.0,
      // getDrawingHorizontalLine: (value) {
      //   return FlLine(
      //     color: MyColors.appBackgroundColor.withOpacity(.5),
      //     strokeWidth: 1,
      //   );
      // },
      // getDrawingVerticalLine: (value) {
      //   return FlLine(
      //     color: Color(0xff37434d),
      //     strokeWidth: 1,
      //   );
      // },
    );
  }

  LineChartBarData lineChartBarData() {
    return LineChartBarData(
        spots: MyFlSpots(),
        isCurved: true,
        belowBarData: BarAreaData(
            show: true,
            color: ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.4)),
        isStrokeCapRound: true,
        isStrokeJoinRound: true,
        preventCurveOverShooting: true,
        show: true,
        dotData: FlDotData(
          show: true,
        ));
  }

  FlTitlesData titlesData() {
    return FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: false,
        )),
        topTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: false,
        )),
        leftTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTitlesWidget: (value, meta) =>
              MyText(value.toInt().toString()).text(12),
        )),
        bottomTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          getTitlesWidget: ((value, meta) {
            switch (value.toInt()) {
              case 1:
                return MyText("S").text(14);
              case 2:
                return MyText("M").text(14);
              case 3:
                return MyText("T").text(14);
              case 4:
                return MyText("W").text(14);
              case 5:
                return MyText("Th").text(14);
              case 6:
                return MyText("F").text(14);
              default:
                return MyText("Sa").text(14);
            }
          }),
        )));
  }

  List<FlSpot> MyFlSpots() {
    List<PomoticaRecordModel> records =
        PomoticaRecordCrud().recordsOrderGetAll();
    Map<DateTime, double> spots = {};
    for (var record in records) {
      if (spots.containsKey(record.date)) {
        spots[record.date] = spots[record.date]!.toDouble() +
            record.startTime.difference(record.endTime).inMinutes.toDouble();
      } else {
        spots[record.date] =
            record.startTime.difference(record.endTime).inMinutes.toDouble();
      }
    }
    List<FlSpot> flSpots = [];
    spots.forEach((key, value) {
      flSpots.add(FlSpot(key.weekday.toDouble(), value));
    });
    return flSpots;
  }

  int maxTimeSpent() {
    List<PomoticaRecordModel> records =
        PomoticaRecordCrud().recordsOrderGetAll();
    List<int> record = records
        .map((e) => e.startTime.difference(e.endTime).inMinutes)
        .toList();
    record.sort();
    return record.last;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(action: const [], text: "See your Records").paint(),
        body: PomoticaRecordCrud().recordsOrderGetAll().isEmpty
            ? Center(
                child: AutoSizeText("You have no record!",
                    style: MyText.textThemePoppins(
                        Colors.white60, FontWeight.w400, 24)))
            : SingleChildScrollView(
                child: Column(
                  children: [
                    MyText("Weekly Report").heading3(),
                    ViewButtons(),
                    Container(
                      margin: const EdgeInsets.all(10),
                      // padding: EdgeInsets.all(10),
                      height: Get.height - 200,
                      child: LineChart(
                        weeklyChart(),
                      ),
                    ),
                    // MyText("Heatmap").heading3(),
                    // HeatMapCalendar(
                    //     datasets: datasets(),
                    //     size: Get.width * 0.1,
                    //     colorsets: {1: Colors.pink}),
                    // SizedBox(
                    //   height: 20,
                    // )
                  ],
                ),
              ));
  }

  Widget ViewButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [],
    );
  }

  datasets() {
    List<PomoticaRecordModel> records =
        PomoticaRecordCrud().recordsOrderGetAll();
    Map<DateTime, int> myFlSpots = {for (var e in records) e.date: e.pomos};
    return myFlSpots;
  }
}
