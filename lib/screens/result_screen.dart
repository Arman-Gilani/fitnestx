import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

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
    return DefaultTabController(

      length: 2,
      child: Scaffold(

        backgroundColor: Colors.white,

        appBar: AppBar(
          centerTitle: true,
          title: Text("Result",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          ),
          leading: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share, color: Colors.black,),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz_rounded, color: Colors.black,),
                ),
              ),
            ),
          ],

          backgroundColor: Colors.white,

          elevation: 0,

        ),

        body: SafeArea(
          child: Column(
            children: [

              const SizedBox(height: 20),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(

                  indicator: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF98C0FE), Color(0xFF94A8FF)],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  tabs: const [

                    Tab(text: "Photo"),
                    Tab(text: "Statistic"),

                  ],
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: TabBarView(
                  children: [

                    SingleChildScrollView(
                      child: Column(
                        children: [

                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text("Average Progress",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                Text("Good",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [

                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Container(
                                        width: constraints.maxWidth * 0.62,
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [Color(0xFF94A3FE), Color(0xFFAF96F9)],
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      );
                                    },
                                  ),

                                  Center(
                                    child: Text(
                                      "${(0.62 * 100).toInt()}%",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text("May",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text("June",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Text("Front Facing",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                            child: Row(
                              children: [

                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image1.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image2.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text("Back Facing",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                            child: Row(
                              children: [

                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image4.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text("Left Facing",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                            child: Row(
                              children: [

                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image5.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image6.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text("Right Facing",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                            child: Row(
                              children: [

                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image7.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/resuly_image8.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0, bottom: 30.0),
                            child: SizedBox(
                              height: 55,
                              width: double.infinity,
                              child: DecoratedBox(

                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF97B3FE), Color(0xFF9AC2FF)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),

                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Back to Home",
                                    style: TextStyle(

                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      child: Column(
                        children: [

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
                            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text("May",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text("June",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text("Lose Weight",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Text("33%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),
                              Row(
                                children: [

                                  Container(
                                    width: 95,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFDB4B3),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                    ),
                                  ),
                                  Container(
                                    width: 195,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF9AC2FD),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                    ),
                                  ),

                                ],
                              ),
                              Text("67%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text("Hight Increase",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Text("88%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),
                              Row(
                                children: [

                                  Container(
                                    width: 195,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFDB4B3),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF9AC2FD),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                    ),
                                  ),

                                ],
                              ),
                              Text("12%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text("Muscle Mass Increase",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Text("57%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),
                              Row(
                                children: [

                                  Container(
                                    width: 135,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFDB4B3),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                    ),
                                  ),
                                  Container(
                                    width: 155,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF9AC2FD),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                    ),
                                  ),

                                ],
                              ),
                              Text("43%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text("Abs",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Text("89%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),
                              Row(
                                children: [

                                  Container(
                                    width: 205,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFDB4B3),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF9AC2FD),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                    ),
                                  ),

                                ],
                              ),
                              Text("11%",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),

                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0, bottom: 30.0),
                            child: SizedBox(
                              height: 55,
                              width: double.infinity,
                              child: DecoratedBox(

                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF97B3FE), Color(0xFF9AC2FF)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),

                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Back to Home",
                                    style: TextStyle(

                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}