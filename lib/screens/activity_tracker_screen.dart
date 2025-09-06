import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityTrackerScreen extends StatefulWidget {
  const ActivityTrackerScreen({super.key});

  @override
  State<ActivityTrackerScreen> createState() => _ActivityTrackerScreenState();
}

class _ActivityTrackerScreenState extends State<ActivityTrackerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Activity Tracker",
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
      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0XFFE9F0FF),
                    ),
                    child: Column(
                      children: [

                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("Today Target",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0XFF98B3FF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.add),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                          child: Row(
                            children: [

                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                    child: Row(
                                      children: [

                                        Icon(
                                          Icons.water_drop_outlined,
                                          color: Color(0XFF98B3FF),
                                          size: 50,
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            Text("8L",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0XFFB5C4EC),
                                                ),
                                              ),
                                            ),

                                            Text("Water Intake",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 16,
                              ),

                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                    child: Row(
                                      children: [

                                        Icon(
                                          Icons.sports_gymnastics_rounded,
                                          color: Color(0XFF98B3FF),
                                          size: 50,
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            Text("2400",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0XFFB5C4EC),
                                                ),
                                              ),
                                            ),

                                            Text("Foot Steps",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                ),
                                              ),
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
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Activity Progress",
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
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: Row(
                      children: [

                        Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Container(
                                width: 30,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 30,
                                height: 150,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0XFFD694E5), Color(0XFFD495E5)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                              child: Text("Mon",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Container(
                                width: 30,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 30,
                                height: 90,
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

                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                              child: Text("Tue",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Container(
                                width: 30,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 30,
                                height: 130,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0XFFD694E5), Color(0XFFD495E5)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                              child: Text("Wed",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 30,
                                height: 160,
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

                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                              child: Text("Thu",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Container(
                                width: 30,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0XFFD694E5), Color(0XFFD495E5)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                              child: Text("Fri",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Container(
                                width: 30,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 30,
                                height: 140,
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

                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                              child: Text("Sat",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),


                        Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Container(
                                width: 30,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 30,
                                height: 80,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0XFFD694E5), Color(0XFFD495E5)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                              child: Text("Sun",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Latest Workout",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text("See more",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [

                                Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFE9F0FF),
                                    borderRadius: BorderRadius.circular(44.0),
                                  ),
                                  child: Icon(
                                      Icons.person,
                                      size: 46.0
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text("Drinking 300ml Water",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                          ),
                                        ),
                                      ),
                                      Text("About 3 minutes ago",
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
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10.0, bottom: 30.0),
                            child: Icon(
                              Icons.more_vert_rounded,
                              color: Colors.grey,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [

                                Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFE9F0FF),
                                    borderRadius: BorderRadius.circular(44.0),
                                  ),
                                  child: Icon(
                                      Icons.person_3_rounded,
                                      size: 46.0
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text("Eat Snack(Fitbar)",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                          ),
                                        ),
                                      ),
                                      Text("About 10 minutes ago",
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
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10.0, bottom: 30.0),
                            child: Icon(
                              Icons.more_vert_rounded,
                              color: Colors.grey,
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

    );
  }
}