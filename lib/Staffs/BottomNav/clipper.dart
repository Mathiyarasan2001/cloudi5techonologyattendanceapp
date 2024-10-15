import 'package:flutter/material.dart';

import 'sizeconfig.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.height * 0.2, AppSizes.blockSizeVertical * 4);
    path.lineTo(
        AppSizes.blockSizeVertical * 4.10, AppSizes.blockSizeHorizontal * 9);
    path.lineTo(size.width, 0);
    path.lineTo(
        AppSizes.blockSizeHorizontal * 7, AppSizes.blockSizeVertical * 7);

    path.lineTo(AppSizes.blockSizeHorizontal * 12, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
