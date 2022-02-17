import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/screens/brand_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 231, 219, 219),
        textTheme: GoogleFonts.robotoTextTheme(),
      
      ),
      title: 'Flutter Demo',
      home: const BrandOverview(),
    );
  }
}