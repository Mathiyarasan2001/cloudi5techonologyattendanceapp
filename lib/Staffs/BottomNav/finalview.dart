import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:iconsax/iconsax.dart';
import 'bottomNav.dart';
import 'clipper.dart';
import 'constant.dart';
import 'sizeconfig.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  FinalViewState createState() => FinalViewState();
}

class FinalViewState extends State<FinalView> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(
        milliseconds: 400,
      ),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              controller: pageController,
              children: screens, // List of screen widgets
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: bottomNav(), // Custom bottom navigation bar
          ),
        ],
      ),
    );
  }

  Widget bottomNav() {
    return Material(
      // borderRadius: BorderRadius.circular(30),
      color: Colors.transparent,
      // elevation: 6,
      child: Container(
        height: AppSizes.blockSizeHorizontal * 21,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: whiteColor,
          // borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 15,
              left: AppSizes.blockSizeHorizontal * 3,
              right: AppSizes.blockSizeHorizontal * 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BottomNavBTN(
                    onPressed: (val) {
                      animateToPage(val);
                      setState(() {
                        _currentIndex = val;
                      });
                    },
                    icon: Iconsax.home_2,
                    currentIndex: _currentIndex,
                    index: 0,
                    text: 'Home',
                  ),
                  BottomNavBTN(
                    onPressed: (val) {
                      animateToPage(val);
                      setState(() {
                        _currentIndex = val;
                      });
                    },
                    icon: Iconsax.clock,
                    currentIndex: _currentIndex,
                    index: 1,
                    text: 'Timesheet',
                  ),
                  BottomNavBTN(
                    onPressed: (val) {
                      animateToPage(val);
                      setState(() {
                        _currentIndex = val;
                      });
                    },
                    icon: Iconsax.calendar_tick,
                    currentIndex: _currentIndex,
                    index: 2,
                    text: 'Leave',
                  ),
                  BottomNavBTN(
                    onPressed: (val) {
                      animateToPage(val);
                      setState(() {
                        _currentIndex = val;
                      });
                    },
                    icon: Iconsax.profile_circle,
                    currentIndex: _currentIndex,
                    index: 3,
                    text: 'Profile',
                  ),
                  // BottomNavBTN(
                  //   onPressed: (val) {
                  //     animateToPage(val);
                  //     setState(() {
                  //       _currentIndex = val;
                  //     });
                  //   },
                  //   icon: IconlyLight.profile,
                  //   currentIndex: _currentIndex,
                  //   index: 4,
                  // ),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.decelerate,
              top: 0,
              left: animatedPositionedLeftValue(_currentIndex),
              child: Column(
                children: [
                  Container(
                    height: AppSizes.blockSizeHorizontal * 1.0,
                    width: AppSizes.blockSizeHorizontal * 12,
                    decoration: BoxDecoration(
                      gradient: gradientButtonColor1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      height: AppSizes.blockSizeHorizontal * 15,
                      width: AppSizes.blockSizeHorizontal * 12,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: gradient,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
