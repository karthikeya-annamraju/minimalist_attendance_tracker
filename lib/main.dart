import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimalist_attendance_tracker/screens/attendance_report.dart';
import 'package:minimalist_attendance_tracker/screens/home_page.dart';

import 'auth/login_page.dart';
import 'auth/singup_page.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Attendance Track',
      theme: ThemeData.light(
      ).copyWith(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: const LoginPage(),
    );
  }
}
