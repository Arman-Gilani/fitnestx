import 'package:fitnestx/screens/breakfast_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPlannerScreen extends StatefulWidget {
  const MealPlannerScreen({super.key});

  @override
  State<MealPlannerScreen> createState() => _MealPlannerScreenState();
}

class _MealPlannerScreenState extends State<MealPlannerScreen> {

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
        centerTitle: true,
        title: Text("Meal Planner",
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
                icon: Icon(Icons.more_horiz_rounded, color: Colors.black,),
              ),
            ),
          ),
        ],

        backgroundColor: Colors.white,

      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Meal Nutritions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF97B1FD)),
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
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
                          child: Text("Daily Meal Schedule",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xFF97B1FD)),
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

                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Today Meals",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF97B1FD)),
                        ),
                        onPressed: () {},
                        child: Text("Breakfast",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFE9F0FF),
                                    borderRadius: BorderRadius.circular(44.0),
                                  ),
                                  child: Icon(
                                      Icons.restaurant,
                                      size: 46.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Salmon Nigiri",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),
                                    Text("Today | 7am",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.notifications_active_outlined,
                              color: Colors.pinkAccent,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFE9F0FF),
                                    borderRadius: BorderRadius.circular(44.0),
                                  ),
                                  child: Icon(
                                      Icons.restaurant,
                                      size: 46.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Lowfat Milk",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),
                                    Text("Today | 8am",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.notifications_off_outlined,
                              color: Colors.pinkAccent,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0, left: 20.0),
                    child: Text("Find Something to Eat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 230,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0XFFE9F0FF),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                      Icons.restaurant,
                                      size: 46.0,
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0 ,left: 10.0),
                                  child: Text("Breakfast",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("120+ Foods",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => BreakfastScreen(),),
                                      );
                                    },
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color(0XFF9BC0FF), Color(0XFF93A7FE)],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                        child: Text(
                                          "Select",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0XFFF9EBF9),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.restaurant,
                                    size: 46.0,
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0 ,left: 10.0),
                                  child: Text("Lunch",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("130+ Foods",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color(0XFFE49DD7), Color(0XFFC98FEE)],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                        child: Text(
                                          "Select",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0XFFE9F0FF),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.restaurant,
                                    size: 46.0,
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0 ,left: 10.0),
                                  child: Text("Breakfast",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("120+ Foods",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color(0XFF9BC0FF), Color(0XFF93A7FE)],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                        child: Text(
                                          "Select",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0XFFF9EBF9),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.restaurant,
                                    size: 46.0,
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0 ,left: 10.0),
                                  child: Text("Lunch",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("130+ Foods",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color(0XFFE49DD7), Color(0XFFC98FEE)],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                        child: Text(
                                          "Select",
                                          style: TextStyle(color: Colors.white),
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
                ),

              ],
            ),
          ),
      ),

      backgroundColor: Colors.white,

    );
  }
}