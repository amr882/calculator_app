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
  String equation = "0";
  addequation(String num) {
    setState(() {
      if (equation.length == 15) {
        return;
      } else {
        setState(() {
          if (equation == "0") {
            equation = "";
            equation = equation + num;
          } else {
            equation = equation + num;
          }
          print(equation);
        });
      }
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
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // first row
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              equation,
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff747477),
                                                  fontSize: 5.h),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          res,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                res.length > 10 ? 4.h : 7.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CalcButton(
                                    color: const Color(0xff4e505f),
                                    equation: "C",
                                    onTap: () {
                                      setState(() {
                                        equation = "0";
                                      });
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff4e505f),
                                    equation: "-/+",
                                    onTap: () {
                                      addequation("-");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff4e505f),
                                    equation: "%",
                                    onTap: () {
                                      addequation("%");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff4b5efc),
                                    equation: "/",
                                    onTap: () {
                                      addequation("/");
                                    },
                                  ),
                                ],
                              ),

                              // 2nd row
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "7",
                                    onTap: () {
                                      addequation("7");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "8",
                                    onTap: () {
                                      addequation("8");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "9",
                                    onTap: () {
                                      addequation("9");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff4b5efc),
                                    equation: "X",
                                    onTap: () {
                                      addequation("*");
                                    },
                                  ),
                                ],
                              ),
                              // 3 row

                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "4",
                                    onTap: () {
                                      addequation("4");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "5",
                                    onTap: () {
                                      addequation("5");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "6",
                                    onTap: () {
                                      addequation("6");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff4b5efc),
                                    equation: "−",
                                    onTap: () {
                                      addequation("-");
                                    },
                                  ),
                                ],
                              ),
                              // 4 row
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "1",
                                    onTap: () {
                                      addequation("1");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "2",
                                    onTap: () {
                                      addequation("2");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "3",
                                    onTap: () {
                                      addequation("3");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff4b5efc),
                                    equation: "+",
                                    onTap: () {
                                      addequation("+");
                                    },
                                  ),
                                ],
                              ),
                              // 5 row

                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: ".",
                                    onTap: () {
                                      addequation(".");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "0",
                                    onTap: () {
                                      addequation("0");
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff2e2f38),
                                    equation: "D",
                                    onTap: () {
                                      setState(() {
                                        if (equation != "0") {
                                          equation = equation.substring(
                                              0, equation.length - 1);
                                          if (equation == "") {
                                            equation = "0";
                                          }
                                        } else {
                                          return;
                                        }
                                      });
                                    },
                                  ),
                                  CalcButton(
                                    color: const Color(0xff4b5efc),
                                    equation: "=",
                                    onTap: () {
                                      setState(() {
                                        if (equation == "0") {
                                          return;
                                        } else {
                                          res = equation.interpret().toString();
                                        }
                                      });
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
