import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/Map/mapScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/home/checkOut.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ClScreen1 extends StatefulWidget {
  const ClScreen1({super.key});

  @override
  State<ClScreen1> createState() => _ClScreen1State();
}

class _ClScreen1State extends State<ClScreen1> {
  bool isTapped = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    final radius = (height + width) / 25;
    return isTapped
        ? Scaffold(
            // backgroundColor: backgroundColor,
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                      height: height / 4,
                      width: width / 1,
                      decoration: const BoxDecoration(
                          gradient: gradientButtonColor1,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            bottomRight: Radius.circular(22),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height / 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("assets/image.jpeg"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "Dinesh Kumar",
                                          color: whiteColor,
                                          weight: FontWeight.w700,
                                          size: 16),
                                      dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "SEO",
                                          color: whiteColor,
                                          weight: FontWeight.w400,
                                          size: 12),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Iconsax.message,
                                color: whiteColor,
                              ),
                              Icon(
                                Iconsax.notification,
                                color: whiteColor,
                              )
                            ],
                          )
                        ],
                      )),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: height / 2.5,
                      child: Center(
                        child: Container(
                          height: height / 5,
                          width: width / 1.1,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "Good Morning Dinesh",
                                          color: Color(0xff919191),
                                          weight: FontWeight.w400,
                                          size: 12),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "Let’s Get to Work!",
                                          color: blackColor,
                                          weight: FontWeight.w700,
                                          size: 16),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      ColorText(
                                        size: 28,
                                        textAlign: TextAlign.center,
                                        weight: FontWeight.w700,
                                        text: "00:00",
                                      ),
                                      dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "Hrs",
                                          color: baseTextColor,
                                          weight: FontWeight.w400,
                                          size: 12),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: gradientButtonColor1,

                                  // LinearGradient(
                                  //   begin: Alignment.topLeft,
                                  //   end: Alignment.bottomRight,
                                  //   colors: [
                                  //     Color(0xff34346D),
                                  //     Color(0xffB6465A)
                                  //   ],
                                  // ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    fixedSize: const Size(280, 44),
                                  ),
                                  onPressed: () {
                                    Get.off(const Mapscreen());
                                  },
                                  child: const dmSansText(
                                    textAlign: TextAlign.center,
                                    text: "Check In",
                                    color: whiteColor,
                                    weight: FontWeight.w700,
                                    size: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                      top: height / 2.4,
                      left: width / 21,
                      right: width / 21,
                      bottom: height / 2.5,
                      child: Container(
                        height: height / 5,
                        width: width / 1.1,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isTapped = !isTapped;
                                });
                              },
                              child: CircleAvatar(
                                radius: radius,
                                backgroundImage:
                                    const AssetImage("assets/image.jpeg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height / 15,
                                  width: width / 1.7,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "Aug 2024",
                                              color: baseTextColor,
                                              weight: FontWeight.w500,
                                              size: 14),
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "24 Days",
                                              color: blackColor,
                                              weight: FontWeight.w400,
                                              size: 12),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "Total Work Hrs",
                                              color: baseTextColor,
                                              weight: FontWeight.w500,
                                              size: 14),
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "164/192 Hrs",
                                              color: blackColor,
                                              weight: FontWeight.w400,
                                              size: 12),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height / 15,
                                  width: width / 1.7,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "16",
                                              color: presentColor,
                                              weight: FontWeight.w700,
                                              size: 22),
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "Present",
                                              color: Color(0xff3D3D3D),
                                              weight: FontWeight.w500,
                                              size: 12),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 32,
                                        child: VerticalDivider(),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "0",
                                              color: absentColor,
                                              weight: FontWeight.w700,
                                              size: 22),
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "Absent",
                                              color: Color(0xff3D3D3D),
                                              weight: FontWeight.w500,
                                              size: 12),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 32,
                                        child: VerticalDivider(),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "5",
                                              color: lateColor,
                                              weight: FontWeight.w700,
                                              size: 22),
                                          dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "Late",
                                              color: Color(0xff3D3D3D),
                                              weight: FontWeight.w500,
                                              size: 12),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      top: height / 1.6,
                      left: width / 21,
                      right: width / 21,
                      bottom: height / 5,
                      child: Container(
                        height: height / 5,
                        width: width / 1.1,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const dmSansText(
                                      textAlign: TextAlign.center,
                                      text: "23 Aug 2024",
                                      color: Color(0xff3C3C3C),
                                      weight: FontWeight.w500,
                                      size: 14),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "Work Hrs",
                                          color: baseTextColor,
                                          weight: FontWeight.w500,
                                          size: 12),
                                      SizedBox(
                                        width: width / 30,
                                      ),
                                      Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          gradient: gradientButtonColor1,

                                          //   LinearGradient(
                                          //     begin: Alignment.topLeft,
                                          //     end: Alignment.bottomRight,
                                          //     colors: [
                                          //       Color(0xff34346D),
                                          //       Color(0xffB6465A)
                                          //     ],
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: const Center(
                                          child: dmSansText(
                                              textAlign: TextAlign.center,
                                              text: "00",
                                              color: whiteColor,
                                              weight: FontWeight.w500,
                                              size: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      gradient: gradientButtonColor1,

                                      //  LinearGradient(
                                      //   begin: Alignment.topLeft,
                                      //   end: Alignment.bottomRight,
                                      //   colors: [
                                      //     Color(0xff34346D),
                                      //     Color(0xffB6465A)
                                      //   ],
                                      // ),

                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 28,
                                        width: 58,
                                        decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: const Center(
                                          child: ColorText(
                                            size: 12,
                                            textAlign: TextAlign.center,
                                            weight: FontWeight.w500,
                                            text: "Ontime",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const dmSansText(
                                  textAlign: TextAlign.center,
                                  text: "Check in to get data",
                                  color: Color(0xffCCCCCC),
                                  weight: FontWeight.w700,
                                  size: 16),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          )
        : const CheckOutScreen();
  }
}
