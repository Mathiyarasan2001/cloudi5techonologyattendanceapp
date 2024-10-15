import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:flutter/material.dart';

class BalanceLeaveContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color1;

  const BalanceLeaveContainer({
    super.key,
    required this.text1,
    required this.text2,
    required this.color1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: 136,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1.5, color: color1),
          color: color1.withOpacity(.2)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            dmSansText(
                textAlign: TextAlign.center,
                text: text1,
                color: Color(0xff000000),
                weight: FontWeight.w500,
                size: 14),
            dmSansText(
                textAlign: TextAlign.center,
                text: text2,
                color: color1,
                weight: FontWeight.w600,
                size: 16),
          ],
        ),
      ),
    );
  }
}
