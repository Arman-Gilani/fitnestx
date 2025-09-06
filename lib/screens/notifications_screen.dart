import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Notification",
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
            children: [

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [

                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0XFFECF1FD),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.food_bank_outlined,
                            size: 30.0,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Hey, it's time for lunch",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                ),
                              ),

                              Text("About 1 minute ago",
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

                    Icon(
                      Icons.more_vert_rounded,
                      size: 30.0,
                      color: Colors.grey
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      child: Row(
                        children: [

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0XFFF5E9FC),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.sports_gymnastics,
                              size: 30.0,
                            ),
                          ),

                          SizedBox(width: 10.0),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Don't miss your lowerbody workout",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                                Text("About 3 hours ago",
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

                    Icon(
                        Icons.more_vert_rounded,
                        size: 30.0,
                        color: Colors.grey
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      child: Row(
                        children: [

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0XFFEDF1FC),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.cake_outlined,
                              size: 30.0,
                            ),
                          ),

                          SizedBox(width: 10.0),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Hey, let's add some meals for your birthday",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                                Text("About 3 hours ago",
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

                    Icon(
                        Icons.more_vert_rounded,
                        size: 30.0,
                        color: Colors.grey
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      child: Row(
                        children: [

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0XFFF5E9FC),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.sports,
                              size: 30.0,
                            ),
                          ),

                          SizedBox(width: 10.0),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Congratulations, you have finished...",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                                Text("29 May",
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

                    Icon(
                        Icons.more_vert_rounded,
                        size: 30.0,
                        color: Colors.grey
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      child: Row(
                        children: [

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0XFFE9F0FF),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.lunch_dining,
                              size: 30.0,
                            ),
                          ),

                          SizedBox(width: 10.0),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Hey, it's time for lunch",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                                Text("8 April",
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

                    Icon(
                        Icons.more_vert_rounded,
                        size: 30.0,
                        color: Colors.grey
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      child: Row(
                        children: [

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0XFFF5E9FC),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.sports_gymnastics_rounded,
                              size: 30.0,
                            ),
                          ),

                          SizedBox(width: 10.0),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Ups, You have missed your Lowerbody workout",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),

                                Text("3 April",
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

                    Icon(
                        Icons.more_vert_rounded,
                        size: 30.0,
                        color: Colors.grey
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ),

            ],
          ),
      ),

      backgroundColor: Colors.white,

    );
  }
}