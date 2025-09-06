import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAlarmScreen extends StatefulWidget {
  const AddAlarmScreen({super.key});

  @override
  State<AddAlarmScreen> createState() => _AddAlarmScreenState();
}

class _AddAlarmScreenState extends State<AddAlarmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Alarm",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [

                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.bed_sharp,
                                  size: 36,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Bedtime",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                              ],
                            ),

                            Row(
                              children: [

                                Text("09:00 PM",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [

                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.timelapse_rounded,
                                  size: 36,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Hours of sleep",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                              ],
                            ),

                            Row(
                              children: [

                                Text("8Hrs 30min",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [

                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.repeat,
                                  size: 36,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Repeat",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                              ],
                            ),

                            Row(
                              children: [

                                Text("Mon to Fri",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [

                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.vibration_rounded,
                                  size: 36,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Vibrate When Alarm sound",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                              ],
                            ),

                            Row(
                              children: [

                                Switch(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
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
                        "Add",
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

      backgroundColor: Colors.white,

    );
  }
}