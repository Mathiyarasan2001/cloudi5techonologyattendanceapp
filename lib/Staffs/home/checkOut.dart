import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/home/checkIn.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/home/homeController.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool isTapped = true;

  final Homecontroller homecontroller = Get.put(Homecontroller());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final radius = (height + width) / 25;
    return isTapped
        ? Scaffold(
            // backgroundColor: backgroundColor,
            body: Container(
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
                                          text: "Good Morning",
                                          color: blackColor,
                                          weight: FontWeight.w700,
                                          size: 14),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "Dinesh",
                                          color: blackColor,
                                          weight: FontWeight.w700,
                                          size: 14),
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
                                        text: "02:30",
                                      ),
                                      dmSansText(
                                          textAlign: TextAlign.center,
                                          text: "Hrs",
                                          color: baseTextColor,
                                          weight: FontWeight.w400,
                                          size: 12),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const ColorText(
                                      size: 12,
                                      textAlign: TextAlign.center,
                                      weight: FontWeight.w400,
                                      text: "Good You’re on time",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 1, right: 1),
                                      child: Container(
                                        height: 17,
                                        width: 16,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/clap.gif"),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),
                                    const ColorText(
                                      size: 12,
                                      textAlign: TextAlign.center,
                                      weight: FontWeight.w400,
                                      text: "09:30 AM",
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 44,
                                width: 280,
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
                                child: Center(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: whiteColor,
                                      shape: ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      fixedSize: const Size(276, 40),
                                    ),
                                    onPressed: () {
                                      homecontroller.showBottomSheet(() {
                                        setState(() {
                                          isTapped = !isTapped;
                                          Get.back();
                                        });
                                      });
                                    },
                                    child: const ColorText(
                                      size: 16,
                                      textAlign: TextAlign.center,
                                      weight: FontWeight.w700,
                                      text: "Check Out",
                                    ),
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
                        child: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: radius,
                                backgroundImage:
                                    const AssetImage("assets/image.jpeg"),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                        ),
                      )),
                  Positioned(
                      top: height / 1.6,
                      left: width / 21,
                      right: width / 21,
                      bottom: height / 7,
                      child: Container(
                        height: height / 5,
                        width: width / 1.1,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SingleChildScrollView(
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

                                            // LinearGradient(
                                            //   begin: Alignment.topLeft,
                                            //   end: Alignment.bottomRight,
                                            //   colors: [
                                            //     Color(0xff34346D),
                                            //     Color(0xffB6465A)
                                            //   ],
                                            // ),

                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          child: const Center(
                                            child: dmSansText(
                                                textAlign: TextAlign.center,
                                                text: "9.3",
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
                                        // LinearGradient(
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 64,
                                    width: 132,
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        border: Border.all(
                                          color: const Color(0xffE8E8E8),
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 32,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: const Color(0xff023575)
                                                  .withOpacity(.2)),
                                          child: const Icon(
                                            Iconsax.import_2,
                                            color: Color(0xff023575),
                                          ),
                                        ),
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            dmSansText(
                                                textAlign: TextAlign.center,
                                                text: "Check In",
                                                color: Color(0xff3C3C3C),
                                                weight: FontWeight.w400,
                                                size: 14),
                                            dmSansText(
                                                textAlign: TextAlign.center,
                                                text: "09:30 AM",
                                                color: Color(0xff7E7E7E),
                                                weight: FontWeight.w400,
                                                size: 12),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          )
        : const CheckInScreen();
  }
}
