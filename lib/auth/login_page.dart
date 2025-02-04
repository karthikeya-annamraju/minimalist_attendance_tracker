import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:minimalist_attendance_tracker/palette.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.25,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Column(
                      children: [
                        const SizedBox(height: 30,),
                        Text(
                          'Welcome Back',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 30,
                          ),
                        ),

                        Lottie.asset('assets/lottie/login_wave.json', height: 150, width: 400),

                        Text(
                          'Enter your email and password to login',
                          style: GoogleFonts.poppins(
                            fontSize: 14.5,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.person_outlined,
                                size: 20,
                              ),
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock_outline_rounded,
                                size: 20,
                              ),
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              'Forgot password ?',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 45,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.green,
                          ),
                          child: Center(
                              child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
