import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutTrackerScreen1 extends StatefulWidget {
  const WorkoutTrackerScreen1({super.key});

  @override
  State<WorkoutTrackerScreen1> createState() => _WorkoutTrackerScreen1State();
}

class _WorkoutTrackerScreen1State extends State<WorkoutTrackerScreen1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        actions: [

          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Icon(
                Icons.more_horiz_rounded,
              ),
            ),
          ),

        ],

        leading: Padding(
          padding: EdgeInsets.only(left: 16.0, bottom: 10.0, top: 5.0),
          child: Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[100],
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel_outlined,
                ),
            ),
          ),
        ),

        backgroundColor: Colors.white,

        automaticallyImplyLeading: false,

        elevation: 0,

      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Center(
                    child: Image.asset("assets/images/Image8.png"),
                ),

                SizedBox(
                  height: 30.0,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("Jumping Jack",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 5.0),
                    child: Text("Easy | 390 Calories Burn",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 30.0),
                    child: Text("Descriptions",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text("A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide.",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("How To Do It",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),

                      Text("4 Steps",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: [

                        Row(
                          children: [

                            Column(
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.purpleAccent,
                                  ),
                                ),

                                Container(
                                  width: 1,
                                  height: 70,
                                  color: Colors.purpleAccent,
                                ),

                              ],
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Spread your arms",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text("To make the gestures feel more relaxed stretch your arms as you start this movement. No bending of hands.",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.0),
                            child: Container(
                              width: 1,
                              height: 20,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ),

                        Row(
                          children: [

                            Column(
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.purpleAccent,
                                  ),
                                ),

                                Container(
                                  width: 1,
                                  height: 70,
                                  color: Colors.purpleAccent,
                                ),

                              ],
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Rest at The Toe",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text("The basis of this movement is jumping Now, what needs to be considered is that you have to use the tips of your feet.",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.0),
                            child: Container(
                              width: 1,
                              height: 20,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ),

                        Row(
                          children: [

                            Column(
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.purpleAccent,
                                  ),
                                ),

                                Container(
                                  width: 1,
                                  height: 70,
                                  color: Colors.purpleAccent,
                                ),

                              ],
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Adjust Foot Movement",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text("Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.0),
                            child: Container(
                              width: 1,
                              height: 20,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ),

                        Row(
                          children: [

                            Column(
                              children: [

                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                                SizedBox(
                                  height: 70,
                                ),

                              ],
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Clapping Both Hands",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text("This cannot be taken lightly, You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack.",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Text("Custom Repetitions",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2026),
                      onDateChanged: (value) {},
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 30.0),
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
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Save",
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