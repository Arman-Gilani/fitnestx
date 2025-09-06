import 'package:fitnestx/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [

            Form(
              key: _formKey,
              child: Column(
                children: [

                  // Text
                  Text("Hey there,",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Text
                  Text("Create an account",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  // First Name TextFormField
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "First Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.person),
                        fillColor: Colors.grey[130],
                        filled: true,
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return "Please enter your first name";
                        }
                        return null;
                      },
                    ),
                  ),
                  // Last Name TextFormField
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.person),
                        fillColor: Colors.grey[130],
                        filled: true,
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return "Please enter your last name";
                        }
                        return null;
                      },
                    ),
                  ),
                  // Email TextFormField
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.email),
                        fillColor: Colors.grey[130],
                        filled: true,
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return "Please enter your email";
                        }
                        if(!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+").hasMatch(value)) {
                          return "Enter a valid email";
                        }
                        return null;
                      },
                    ),
                  ),
                  // Password TextFormField
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                        fillColor: Colors.grey[130],
                        filled: true,
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      // Text
                      Expanded(
                        child: Text("By continuing you accept our Privacy Policy and Term of use.",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          textAlign: TextAlign.start,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            Expanded(child: Container()),

            Column(
              children: [

                // Register ElevatedButton
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF97B3FE), Color(0xFF9AC2FF)],
                        ),
                        borderRadius: BorderRadius.circular(40),
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
                              MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        child: Text("Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  children: [

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey[110],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Text("Or",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey[110],
                          thickness: 2,
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // email ElevatedButton
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[130],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Icon(Icons.email,),
                      ),
                    ),
                    // facebook ElevatedButton
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[130],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Icon(Icons.facebook,),
                      ),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text("Already have an account? ",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),
                    // Login Text - InkWell
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
                      child: InkWell(
                        child: Text("Login",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.purpleAccent
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                      ),
                    ),
                  ],
                ),

              ],
            ),

          ],
        ),
      ),

      backgroundColor: Colors.white,

    );
  }
}