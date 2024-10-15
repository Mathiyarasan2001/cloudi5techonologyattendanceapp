import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'sizeconfig.dart';

class BottomNavBTN extends StatelessWidget {
  final Function(int) onPressed;
  final String text;
  final IconData icon;
  final int index;
  final int currentIndex;

  const BottomNavBTN({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.index,
    required this.currentIndex,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    AppSizes().init(context);
    return InkWell(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        height: AppSizes.blockSizeHorizontal * 20,
        width: AppSizes.blockSizeHorizontal * 17,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (currentIndex == index)
              Positioned(
                left: AppSizes.blockSizeHorizontal * 4.5,
                bottom: AppSizes.blockSizeHorizontal * 4.5,
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: AppSizes.blockSizeHorizontal * 8,
                ),
              ),
            AnimatedOpacity(
              opacity: (currentIndex == index) ? 1 : 0.2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              child: (currentIndex == index)
                  ? GradientIcon(icon,
                      size: AppSizes.blockSizeHorizontal * 8,
                      gradient: LinearGradient(
                          colors: [Color(0xff34346D), Color(0xffB6465A)]))
                  : Icon(
                      icon,
                      color: Colors.grey[900],
                      size: AppSizes.blockSizeHorizontal * 8,
                    ),
            ),
            Positioned(
              top: height / 17,
              left: 3,
              right: 3,
              child: (currentIndex == index)
                  ? ColorText(
                      text: text,
                      size: AppSizes.blockSizeHorizontal * 2.9,
                      weight: FontWeight.w500,
                      textAlign: TextAlign.center)
                  : Text(
                      text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: AppSizes.blockSizeHorizontal * 3.1,
                        color: Colors.grey,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
