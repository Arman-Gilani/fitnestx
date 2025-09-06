import 'package:fitnestx/screens/notifications_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeContentScreen extends StatefulWidget {
  const HomeContentScreen({super.key});

  @override
  State<HomeContentScreen> createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {

  List<Map<String, double>> chartData = [
    {'x': 0, 'y': 75},
    {'x': 1, 'y': 78},
    {'x': 2, 'y': 72},
    {'x': 3, 'y': 80},
    {'x': 4, 'y': 74},
    {'x': 5, 'y': 79},
    {'x': 6, 'y': 77},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back,",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            Text("Stefani Wong",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.notification_important,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsScreen(),
                  ),
                );
              },
            ),
          ),
        ],

      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue[200],
                  ),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text("BMI (Body Mass Index)",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text("You have a normal weight",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                backgroundColor: Colors.pink[200],
                              ),
                              onPressed: () {},
                              child: Text("View More",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                backgroundColor: Colors.pink[200],
                              ),
                              onPressed: () {},
                              child: Text("View More",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xFFE9F0FF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("Today's Target",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 20, 10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                          ),
                          onPressed: () {},
                            child: Text("Check",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Text("Activity Status",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFE9F0FF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                        child: Text("Heart Rate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: Text("78 BPM",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA7B9F7),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 100,
                        child: SfCartesianChart(
                          backgroundColor: Colors.transparent,
                          plotAreaBorderWidth: 0,
                          primaryXAxis: NumericAxis(isVisible: false),
                          primaryYAxis: NumericAxis(isVisible: false),
                          margin: EdgeInsets.zero,
                          series: <FastLineSeries<Map<String, double>, double>>[
                            FastLineSeries<Map<String, double>, double>(
                              dataSource: chartData,
                              xValueMapper: (data, _) => data['x']!,
                              yValueMapper: (data, _) => data['y']!,
                              color: Colors.purpleAccent,
                              width: 2,
                              markerSettings: MarkerSettings(isVisible: false),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Material(
                    elevation: 0.5,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [

                          Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: Container(
                                  width: 35,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFf8f8f8),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                                child: Container(
                                  width: 35,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFFb9adfa), Color(0xFFb4befd)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
                                  ),
                                ),
                              ),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Water Intake",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("4 Liters",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFA7B9F7),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, right: 10),
                                child: Text("Real time updates"),
                              ),

                              Row(
                                children: [

                                  Column(
                                    children: [

                                      Padding(
                                        padding: EdgeInsets.only(top: 20, right: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.pinkAccent,
                                          ),
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 40, right: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.pinkAccent,
                                          ),
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 50, right: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.pinkAccent,
                                          ),
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 50, right: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.pinkAccent,
                                          ),
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 60, right: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.pinkAccent,
                                          ),
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),

                                    ],
                                  ),
                                  Column(
                                    children: [

                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("6am - 8am"),
                                            Text("600ml",
                                              style: TextStyle(
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("9am - 11am"),
                                            Text("500ml",
                                              style: TextStyle(
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("11am - 2pm"),
                                            Text("1000ml",
                                              style: TextStyle(
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("2pm - 4pm"),
                                            Text("700ml",
                                              style: TextStyle(
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("4pm - now"),
                                            Text("900ml",
                                              style: TextStyle(
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),

                  Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Card(
                          elevation: 1,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Sleep",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("8h 20m",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFA7B9F7),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Card(
                          elevation: 1,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Calories",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("760 kCal",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFA7B9F7),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Workout Progress",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                      ),
                      onPressed: () {},
                      child: Text("Weekly",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SizedBox(
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: true),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            getTitlesWidget: (value, meta) => Text(value.toInt().toString()),
                          ),
                        ),
                      ),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 3),
                            FlSpot(1, 1),
                            FlSpot(2, 4),
                            FlSpot(3, 2),
                            FlSpot(4, 5),
                          ],
                          isCurved: true,
                          color: Colors.blue,
                          barWidth: 3,
                          dotData: FlDotData(show: true),
                          belowBarData: BarAreaData(
                            show: true,
                            color: Colors.blue.withOpacity(0.2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Latest Workout",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text("See more"),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Image(
                                image: AssetImage("assets/images/HomeContentScreenWorkOutImage1.png"),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Fullbody Workout",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                    ),
                                  ),
                                  Row(
                                    children: [

                                      Text("180 Calories Burn",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700],
                                        ),
                                      ),
                                      Text(" | ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text("20 minutes",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    children: [

                                      Container(
                                        width: 75,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [Color(0XFF92A4FC), Color(0XFFAD98F7)]),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                        ),
                                      ),
                                      Container(
                                        width: 135,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD1D9F6),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pinkAccent
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.pinkAccent
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Image(
                                image: AssetImage("assets/images/HomeContentScreenWorkOutImage2.png"),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Lowerbody Workout",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                  Row(
                                    children: [

                                      Text("200 Calories Burn",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text(" | ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text("30 minutes",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    children: [

                                      Container(
                                        width: 125,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [Color(0XFF92A4FC), Color(0XFFAD98F7)]),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD1D9F6),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.pinkAccent
                            ),
                          ),
                          child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.pinkAccent
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Image(
                                image: AssetImage("assets/images/HomeContentScreenWorkOutImage1.png"),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Abbs Workout",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),
                                  ),
                                  Row(
                                    children: [

                                      Text("190 Calories Burn",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text(" | ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text("25 minutes",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    children: [

                                      Container(
                                        width: 75,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [Color(0XFF92A4FC), Color(0XFFAD98F7)]),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                        ),
                                      ),
                                      Container(
                                        width: 135,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD1D9F6),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.pinkAccent
                            ),
                          ),
                          child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.pinkAccent
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Image(
                                image: AssetImage("assets/images/HomeContentScreenWorkOutImage1.png"),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Legs Workout",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),
                                  ),
                                  Row(
                                    children: [

                                      Text("150 Calories Burn",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text(" | ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text("15 minutes",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    children: [

                                      Container(
                                        width: 105,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [Color(0XFF92A4FC), Color(0XFFAD98F7)]),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                        ),
                                      ),
                                      Container(
                                        width: 105,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD1D9F6),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.pinkAccent,
                            ),
                          ),
                          child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.pinkAccent,
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Image(
                                image: AssetImage("assets/images/HomeContentScreenWorkOutImage1.png"),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Hands Workout",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),
                                  ),
                                  Row(
                                    children: [

                                      Text("110 Calories Burn",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text(" | ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),
                                      Text("10 minutes",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]
                                        ),
                                      ),

                                    ],
                                  ),

                                  Row(
                                    children: [

                                      Container(
                                        width: 55,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [Color(0XFF92A4FC), Color(0XFFAD98F7)]),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                        ),
                                      ),
                                      Container(
                                        width: 155,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD1D9F6),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pinkAccent,
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.pinkAccent,
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 100,
              ),

            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,

    );
  }
}