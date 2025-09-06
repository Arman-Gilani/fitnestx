import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Progress Photo",
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
              onPressed: () {},
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
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE6E7),
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 16.0, 0.0, 16.0),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF9F9),
                              borderRadius: BorderRadius.circular(36.0),
                            ),
                            child: Icon(
                                Icons.calendar_month_rounded,
                                size: 40.0
                            ),
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Reminder!",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFC55258),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Next Photos Fall On July 08",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),
                              ),
                            ),

                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 6.0, right: 20.0),
                          child: Column(
                            children: [
                              Icon(Icons.cancel_outlined),
                              SizedBox(
                                height: 60,
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEEFF),
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Track Your Progress Each",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [

                                  Text("Month With ",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                  Text("Photo",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFFA5B4F0),
                                      ),
                                    ),
                                  ),

                                ],
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                                  ),
                                  onPressed: () {},
                                  child: Text("Learn More",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 16.0),
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF9F9),
                              borderRadius: BorderRadius.circular(44.0),
                            ),
                            child: Icon(
                                Icons.calendar_month_rounded,
                                size: 48.0
                            ),
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
                          child: Text("Compare my Photo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10.0, 20, 10.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                            ),
                            onPressed: () {},
                            child: Text("Compare",
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text("Gallery",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text("See more",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFFC7C7C7),
                        ),
                      ),
                    ),

                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text("",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFC7C7C7),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: Text("2 June",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFC7C7C7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage1.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage2.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage3.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage4.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage5.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
                    child: Text("5 May",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFC7C7C7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage6.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage7.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage8.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage9.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/FitnessImage10.jpeg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
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

      floatingActionButton: FloatingActionButton(
          onPressed: () {},
        backgroundColor: Color(0XFFD495E7),
        child: Icon(
          Icons.camera_alt_outlined,
          color: Colors.white,
        ),
      ),

      backgroundColor: Colors.white,

    );
  }
}