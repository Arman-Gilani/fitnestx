import 'package:fitnestx/screens/activity_tracker_screen.dart';
import 'package:fitnestx/screens/add_alarm_screen.dart';
import 'package:fitnestx/screens/meal_planner_screen.dart';
import 'package:fitnestx/screens/meal_schedule_screen.dart';
import 'package:fitnestx/screens/sleep_schedule_screen.dart';
import 'package:fitnestx/screens/sleep_tracker_screen.dart';
import 'package:fitnestx/screens/workout_tracker_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final List<Map<String, dynamic>> gridItems = [
    {
      'title': 'Activity Tracker',
      'icon': Icons.local_activity_outlined,
    },
    {
      'title': 'Workout Tracker',
      'icon': Icons.work_outline_rounded,
    },
    {
      'title': 'Sleep Schedule',
      'icon': Icons.reset_tv_rounded,
    },
    {
      'title': 'Sleep Tracker',
      'icon': Icons.track_changes_rounded,
    },
    {
      'title': 'Meal Schedule',
      'icon': Icons.restaurant,
    },
    {
      'title': 'Meal Planner',
      'icon': Icons.restaurant_menu_rounded,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Search",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        actions: [

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddAlarmScreen(),
                ),
              );
            },
            icon: Icon(Icons.alarm),
          ),

        ],

        backgroundColor: Colors.white,

      ),

      body: SafeArea(
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

            SizedBox(height: 20),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: List.generate(gridItems.length, (index) {
                    final item = gridItems[index];
                    return InkWell(
                      onTap: () {
                        String tappedTitle = item['title'];

                        if (tappedTitle == 'Activity Tracker') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityTrackerScreen()));
                        } else if (tappedTitle == 'Workout Tracker') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WorkoutTrackerScreen()));
                        } else if (tappedTitle == 'Sleep Schedule') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SleepScheduleScreen()));
                        } else if (tappedTitle == 'Sleep Tracker') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SleepTrackerScreen()));
                        } else if (tappedTitle == 'Meal Schedule') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MealScheduleScreen()));
                        }
                        else {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MealPlannerScreen()));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFE9F0FF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(item['icon'], size: 40, color: Color(0XFF99B8FF)),
                            SizedBox(height: 10),
                            Text(
                              item['title'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );

                  }),
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