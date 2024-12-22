import 'package:calculator/components/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String res = "0";
  String exp = "5*5";
  addExp(String num) {
    setState(() {
      exp = exp + num;
      print(exp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17171c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // first row
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "C",
                        onTap: () {
                          setState(() {
                            exp = " ";
                          });
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "-/+",
                        onTap: () {
                          addExp("-");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "%",
                        onTap: () {
                          addExp("%");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4b5efc),
                        exp: "/",
                        onTap: () {
                          addExp("/");
                        },
                      ),
                    ],
                  ),

                  // 2nd row
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "7",
                        onTap: () {
                          addExp("7");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "8",
                        onTap: () {
                          addExp("8");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "9",
                        onTap: () {
                          addExp("9");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4b5efc),
                        exp: "X",
                        onTap: () {
                          addExp("*");
                        },
                      ),
                    ],
                  ),
                  // 3 row

                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "4",
                        onTap: () {
                          addExp("4");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "5",
                        onTap: () {
                          addExp("5");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "6",
                        onTap: () {
                          addExp("6");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4b5efc),
                        exp: "−",
                        onTap: () {
                          addExp("-");
                        },
                      ),
                    ],
                  ),
                  // 4 row
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "1",
                        onTap: () {
                          addExp("1");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "2",
                        onTap: () {
                          addExp("2");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "3",
                        onTap: () {
                          addExp("3");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4b5efc),
                        exp: "+",
                        onTap: () {
                          addExp("+");
                        },
                      ),
                    ],
                  ),
                  // 5 row

                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: ".",
                        onTap: () {
                          addExp(".");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "0",
                        onTap: () {
                          addExp("0");
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4e505f),
                        exp: "D",
                        onTap: () {
                          // delete num
                        },
                      ),
                      CalcButton(
                        color: const Color(0xff4b5efc),
                        exp: "=",
                        onTap: () {
                          //calc
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
