import 'package:calculator/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return const MaterialApp(debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
