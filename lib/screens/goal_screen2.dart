import 'package:fitnestx/screens/goal_screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalScreen2 extends StatefulWidget {
  const GoalScreen2({super.key});

  @override
  State<GoalScreen2> createState() => _GoalScreen2State();
}

class _GoalScreen2State extends State<GoalScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.white,

      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20),

              Text(
                "What is your goal?",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              Text(
                "It will help us to choose a best program for you",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Color(0XFF93AAFD),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [

                      SizedBox(
                        height: 10.0,
                      ),
                      Image.asset(
                        "assets/images/Image6.png",
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      Text(
                        "Lose a Fat",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Divider(
                        color: Colors.white,
                        thickness: 1.0,
                        indent: 145.0,
                        endIndent: 145.0,
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      Text(
                        "I have over 20 lbs to lose. I want to",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Text(
                        "drop all this fat and gain muscle",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Text(
                        "mass.",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 75),

              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
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
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GoalScreen3(),
                          ),
                        );
                      },
                      child: Text(
                        "Confirm",
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
      ),

      backgroundColor: Colors.white,

    );
  }
}