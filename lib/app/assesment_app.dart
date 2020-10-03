import 'package:assesment/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class AssesmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assesment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}
