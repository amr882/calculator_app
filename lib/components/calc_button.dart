import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CalcButton extends StatelessWidget {
  final Color color;
  final String exp;
  final void Function()? onTap;
  const CalcButton(
      {super.key, required this.color, required this.exp, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 20.w,
        height: 20.w,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            exp,
            style: TextStyle(color: Colors.white, fontSize: 3.5.h),
          ),
        ),
      ),
    );
  }
}
