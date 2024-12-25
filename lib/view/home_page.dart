import 'package:calculator/components/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String res = "0";
  String exp = "0";
  addExp(String num) {
    setState(() {
      if (exp == "0") {
        exp = "";
        exp = exp + num;
      } else {
        exp = exp + num;
      }
      print(exp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return Scaffold(
                backgroundColor: const Color(0xff17171c),
                body: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 2.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // first row
                        Expanded(
                          child: SizedBox(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                exp,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
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
                                        exp = "0";
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
                                    color: const Color(0xff2e2f38),
                                    exp: "7",
                                    onTap: () {
                                      addExp("7");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    exp: "8",
                                    onTap: () {
                                      addExp("8");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
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
                                    color: const Color(0xff2e2f38),
                                    exp: "4",
                                    onTap: () {
                                      addExp("4");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    exp: "5",
                                    onTap: () {
                                      addExp("5");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
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
                                    color: const Color(0xff2e2f38),
                                    exp: "1",
                                    onTap: () {
                                      addExp("1");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    exp: "2",
                                    onTap: () {
                                      addExp("2");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
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
                                    color: const Color(0xff2e2f38),
                                    exp: ".",
                                    onTap: () {
                                      addExp(".");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    exp: "0",
                                    onTap: () {
                                      addExp("0");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
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
                      ]),
                ));
          },
        );
      },
    );
  }
}
