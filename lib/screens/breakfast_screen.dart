import 'package:fitnestx/screens/honey_pancake_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BreakfastScreen extends StatefulWidget {
  const BreakfastScreen({super.key});

  @override
  State<BreakfastScreen> createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Breakfast",
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
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    shadowColor: Colors.grey.withOpacity(0.3),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        filled: true,
                        fillColor: Color(0XFFF8F8F8),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Category",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 200,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        Container(
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFE9F0FF),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Salad",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
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
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFF9EBF9),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Cake",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
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
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFE9F0FF),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Pie",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
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
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFF9EBF9),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Smoothie",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Recommendation for Diet",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 300,
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

                              SizedBox(
                                height: 30,
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Icon(
                                  Icons.restaurant,
                                  size: 66.0,
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 20.0 ,left: 10.0),
                                child: Text("Honey Pancake",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("Easy | 30mins | 180kCal",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.center,
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
                                        MaterialPageRoute(builder: (context) => HoneyPancakeScreen(),),
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
                                          "View",
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

                              SizedBox(
                                height: 30,
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Icon(
                                  Icons.restaurant,
                                  size: 66.0,
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 20.0 ,left: 10.0),
                                child: Text("Canai Bread",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("Easy | 20mins | 200kCal",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.center,
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
                                          colors: [Color(0XFFF9EBF2), Color(0XFFF9EBF9)],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                        child: Text(
                                          "View",
                                          style: TextStyle(color: Colors.pinkAccent),
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

                              SizedBox(
                                height: 30,
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Icon(
                                  Icons.restaurant,
                                  size: 66.0,
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 20.0 ,left: 10.0),
                                child: Text("Honey Pancake",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("Easy | 30mins | 180kCal",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.center,
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
                                          "View",
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

                              SizedBox(
                                height: 30,
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Icon(
                                  Icons.restaurant,
                                  size: 66.0,
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 20.0 ,left: 10.0),
                                child: Text("Canai Bread",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("Easy | 20mins | 200kCal",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.center,
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
                                          colors: [Color(0XFFF9EBF2), Color(0XFFF9EBF9)],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                        child: Text(
                                          "View",
                                          style: TextStyle(color: Colors.pinkAccent),
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

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Popular",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  child: InkWell(
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

                                      Text("Blueberry Pancake",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                          ),
                                        ),
                                      ),
                                      Text("Medium | 30mins | 230kCal",
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
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HoneyPancakeScreen(),),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 30.0),
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
                                    Text("Medium | 20mins | 120kCal",
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
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              padding: EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey,
                                size: 15,
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
          ),
      ),

      backgroundColor: Colors.white,

    );
  }
}