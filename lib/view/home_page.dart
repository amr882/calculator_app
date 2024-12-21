import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String exp = "3 * sin(5 * pi / 6)";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(exp), Text(exp.interpret().toString())],
        ),
      ),
    );
  }
}
