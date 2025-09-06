import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile",
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(30), // Rounded corners
                      ),
                      child: Center(
                        child: Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8QEA8ODw8ODRANDQ0NDg4NDQ8PDg4NFREWFhURExUYHSggGBolGxUTITEhJSkrLi4uFx8zODMtNygtLisBCgoKDQ0OFRAQFSsZFRktKysrKysrNys3LSs3NysrLS0rNysrNzcrKzctKystLSs3LSsrKysrLSsrLSsrKysrK//AABEIAOEA4QMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAAAwQFAgEH/8QALBABAAECBAUDAwUBAAAAAAAAAAECAwQRIVExQWFxgRKhsSKR0TJCUnLBFP/EABYBAQEBAAAAAAAAAAAAAAAAAAABAv/EABYRAQEBAAAAAAAAAAAAAAAAAAABEf/aAAwDAQACEQMRAD8A+4gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8mQeiOq/RH7o+XP8A1Ub+0gmEH/VRv7S6i/RP7o+A1KPImJ4a9noAAAAAAAAAAAAAAAAAAAOa64iM50B0hu4imnrO0K17EzOkaR7ygXGbU9eKqnhp24oaqpnjMz3eCoAAAAROXDTsmoxNUde6EBftYmmeOk9U7JS2b809Y2/CYsrRHFu5FUZx9ucO0aAAAAAAAAAAAAAc11xEZzyB5duRTGc+I3Z125NU5z4jlBduTVOc+I2ctSM2gAgAAAAAAAAAD2iuYnONGhYvRVG0xxhnPaKpiYmORiytUcWbkVRn942l2y0AAAAAAAAAAKGLu5zlHCPeVnE3PTT1nSGesZoAqAAAAAmtYeateEdeaxThKeec+TTFEXpwlPWPKC7hZjWPqj3NXEAAgAAACTD3fTPSeLShkr2DuZxlzp+EqxYARoAAAAAAB5Mgo4yvOrL+OnlA9qnOZnec3jTAAAAAsYSzn9U8I4dZV2pbpyiI2gqx0Ay0AAqYuz+6PP5VGrMMuunKZjaZhYzY8AVAABJhq8qo66SjAaw4tVZ0xO8Q7ZbAAAAAAEeInKmrskQ4ufonx8gzwGmAAAAHtHGO8fLVZLTtV5xE7/KVY7ARoAAZuJ/XV3aNU5RMzyjNl1VZzM7zMrErwBWQAAAF/Bz9HaZhOrYH9M/2/wAhZZrUABQAAABBi/0T4+U6LExnRV2BnANMAAAACbDXvTOU8J9pQgNWJesy3eqp4fbksU4zen7SmNatipOMjlTPmUF2/VV0jaDDUuKv5/THDnO6sCsgAAAAALuB/TP9v8hZQYKPp7zMp2a1AAUAAAAeVRpMbvQGTMZabaCbF0ZVd9ULTAAAAAJbNiaukbrluxTTyzneTVxRptVTwif8SRhK+n3XxNXFCcJX0+6OqzVHGmfGrTDTGSNK5Zpq4x55qd7DTTrGse8LqYhAEAAAd2KM6ojzPYGhZpypiNodgy2AAAAAAAAgxdvOnPnTqoNZnYm16Z6Tw/CxmogFQT4ax6tZ4fKOxb9U5cufZpRGWiWrIRD0EaAAAAAAU8Th/wB1PmPwqtZn4m16Z04Tw77LKzYhAVBcwVvT1b6R2VrNv1Tl9+zSiMtNkqx6AjQAAAAAAAA4u24qjKfHSXYDKrpmJynk8aN+zFUbTHCVCqiYn0zpOeTUZsXcHRlTn/LXxyTvIjLTZ6y0AAAAAAAAIsRR6qZjzHdKAySIz0jm7uUfVNMb6LmHsenWdZn2a1jHWHtemOs8ZSgy2AAAAAAAAAAAAOaqInLPlOcOgAAAAAAAAAAAAHMUREzPOeboAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf/9k="),
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Stefani Wong",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Text("Real time updates"),

                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                      child: Text("data",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),

                ],
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    child: Container(
                      width: 100,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Text("180cm",
                              style: TextStyle(
                                color: Colors.blue[200],
                              ),
                            ),
                          ),

                          Text("Height"),

                        ],
                      ),
                    ),
                  ),

                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    child: Container(
                      width: 100,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Text("65kg",
                              style: TextStyle(
                                color: Colors.blue[200],
                              ),
                            ),
                          ),

                          Text("Weight"),

                        ],
                      ),
                    ),
                  ),

                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    child: Container(
                      width: 100,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Text("22yo",
                              style: TextStyle(
                                color: Colors.blue[200],
                              ),
                            ),
                          ),

                          Text("Age"),

                        ],
                      ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [

                        Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                            child: Text("Account",
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
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Personal Data"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 30.0,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.list_alt_rounded,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Achievement"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 30.0,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.lock_clock,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Activity History"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 30.0,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.task_alt_rounded,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Workout Progress"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 30.0,
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [

                        Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Notification",
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
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.notifications,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Pop-up Notification"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Switch(
                                    value: true,
                                    onChanged: (value) {},
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [

                        Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Other",
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
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.email_outlined,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Contact Us"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 30.0,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.privacy_tip_outlined,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Privacy Policy"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 30.0,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      Icons.settings,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("Settings"),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 30.0,
                                ),
                              ),

                            ],
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