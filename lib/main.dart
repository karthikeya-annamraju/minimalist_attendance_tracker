import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimalist_attendance_tracker/screens/attendance_report.dart';
import 'package:minimalist_attendance_tracker/screens/home_page.dart';

import 'auth/login_page.dart';
import 'auth/singup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance Track',
      theme: ThemeData.light(
      ).copyWith(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: const HomePage(),
    );
  }
}
