import 'package:cloudi5techonologyattendanceapp/Staffs/Leave/leaveApplyScreen/leaveApplyScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customContainers.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  int? selectedIndex = 0;
  bool isTapped = true;
  @override
  Widget build(BuildContext context) {
    return isTapped
        ? Scaffold(
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isTapped = !isTapped;
                  });
                },
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff34346D), Color(0xffB6465A)]),
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // backgroundColor: const Color(0xffD6D6D6),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            // color: Color(0xff292D32),
                            size: 20,
                          ),
                          Text(
                            "Leave",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const dmSansText(
                              textAlign: TextAlign.center,
                              text: "",
                              color: const Color(0xff3C3C3C),
                              weight: FontWeight.w700,
                              size: 16),
                          const SizedBox(
                            width: 210,
                          ),
                          const GradientIcon(Icons.calendar_month,
                              size: 24,
                              gradient: LinearGradient(colors: [
                                Color(0xff34346D),
                                Color(0xffB6465A)
                              ]))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 900,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffFFFFFF)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BalanceLeaveContainer(
                                text1: "Leave Balance",
                                text2: "00",
                                color1: Color(0xff34346D),
                              ),
                              BalanceLeaveContainer(
                                text1: "Leave Pendings",
                                text2: "02",
                                color1: Color(0xffE6B92B),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BalanceLeaveContainer(
                                text1: "Leave Approved",
                                text2: "03",
                                color1: Color(0xff45E88E),
                              ),
                              BalanceLeaveContainer(
                                text1: "Leave Rejected",
                                text2: "02",
                                color1: Color(0xffB6465A),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap: () => setState(() {
                                        selectedIndex = 0;
                                      }),
                                  child: selectedIndex == 0
                                      ? GradientButton(
                                          text: "Upcoming",
                                          height: 35,
                                          widht: 136,
                                          onPressed: () {},
                                        )
                                      : Container(
                                          height: 44,
                                          width: 140,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xff34346D),
                                                Color(0xffB6465A)
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Container(
                                              height: 40,
                                              width: 136,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              child: Center(
                                                child: ColorText(
                                                  size: 16,
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w700,
                                                  text: "Upcoming",
                                                ),
                                              ),
                                            ),
                                          ),
                                        )),
                              InkWell(
                                  onTap: () => setState(() {
                                        selectedIndex = 1;
                                      }),
                                  child: selectedIndex == 1
                                      ? GradientButton(
                                          text: "Past",
                                          height: 35,
                                          widht: 136,
                                          onPressed: () {},
                                        )
                                      : Container(
                                          height: 44,
                                          width: 140,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xff34346D),
                                                Color(0xffB6465A)
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Container(
                                              height: 40,
                                              width: 136,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              child: Center(
                                                child: ColorText(
                                                  size: 16,
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w700,
                                                  text: "Past",
                                                ),
                                              ),
                                            ),
                                          ),
                                        )),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          if (selectedIndex == 0)
                            Container(
                              child: Center(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 140,
                                    width: 288,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xffF0F0F0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              dmSansText(
                                                  text: "20 May, 2024",
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xff3C3C3C),
                                                  size: 14),
                                              Container(
                                                height: 28,
                                                width: 62,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                        color:
                                                            Color(0xffEEC32A))),
                                                child: Center(
                                                  child: dmSansText(
                                                      text: "Pending",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xffEEC32A),
                                                      size: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          dmSansText(
                                              text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e",
                                              textAlign: TextAlign.start,
                                              weight: FontWeight.w500,
                                              color: Color(0xff3C3C3C),
                                              size: 12),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor:
                                                        Color(0xffB6465A),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  dmSansText(
                                                      text: "Loss of Pay",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff3C3C3C),
                                                      size: 14),
                                                ],
                                              ),
                                              Center(
                                                child: dmSansText(
                                                    text: "01 Day ( 8.00 Hrs)",
                                                    textAlign: TextAlign.center,
                                                    weight: FontWeight.w500,
                                                    color: Color(0xff3C3C3C),
                                                    size: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 140,
                                    width: 288,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xffF0F0F0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              dmSansText(
                                                  text: "20 May, 2024",
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xff3C3C3C),
                                                  size: 14),
                                              Container(
                                                height: 28,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff45E88E))),
                                                child: Center(
                                                  child: dmSansText(
                                                      text: "Approved",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff45E88E),
                                                      size: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          dmSansText(
                                              text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e",
                                              textAlign: TextAlign.start,
                                              weight: FontWeight.w500,
                                              color: Color(0xff3C3C3C),
                                              size: 12),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor:
                                                        Color(0xff45E88E),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  dmSansText(
                                                      text: "Casual Leave",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff3C3C3C),
                                                      size: 14),
                                                ],
                                              ),
                                              Center(
                                                child: dmSansText(
                                                    text: "01 Day ( 8.00 Hrs)",
                                                    textAlign: TextAlign.center,
                                                    weight: FontWeight.w500,
                                                    color: Color(0xff3C3C3C),
                                                    size: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 140,
                                    width: 288,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xffF0F0F0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              dmSansText(
                                                  text: "20 May, 2024",
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xff3C3C3C),
                                                  size: 14),
                                              Container(
                                                height: 28,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                        color:
                                                            Color(0xffB6465A))),
                                                child: Center(
                                                  child: dmSansText(
                                                      text: "Rejected",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xffB6465A),
                                                      size: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          dmSansText(
                                              text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e",
                                              textAlign: TextAlign.start,
                                              weight: FontWeight.w500,
                                              color: Color(0xff3C3C3C),
                                              size: 12),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor:
                                                        Color(0xffEEC32A),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  dmSansText(
                                                      text: "Medical Leave",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff3C3C3C),
                                                      size: 14),
                                                ],
                                              ),
                                              Center(
                                                child: dmSansText(
                                                    text: "01 Day ( 8.00 Hrs)",
                                                    textAlign: TextAlign.center,
                                                    weight: FontWeight.w500,
                                                    color: Color(0xff3C3C3C),
                                                    size: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                            )
                          else if (selectedIndex == 1)
                            Container(
                              child: Center(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 140,
                                    width: 288,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xffF0F0F0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              dmSansText(
                                                  text: "20 May, 2024",
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xff3C3C3C),
                                                  size: 14),
                                              Container(
                                                height: 28,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                        color:
                                                            Color(0xffB6465A))),
                                                child: Center(
                                                  child: dmSansText(
                                                      text: "Rejected",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xffB6465A),
                                                      size: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          dmSansText(
                                              text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e",
                                              textAlign: TextAlign.start,
                                              weight: FontWeight.w500,
                                              color: Color(0xff3C3C3C),
                                              size: 12),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor:
                                                        Color(0xffEEC32A),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  dmSansText(
                                                      text: "Medical Leave",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff3C3C3C),
                                                      size: 14),
                                                ],
                                              ),
                                              Center(
                                                child: dmSansText(
                                                    text: "01 Day ( 8.00 Hrs)",
                                                    textAlign: TextAlign.center,
                                                    weight: FontWeight.w500,
                                                    color: Color(0xff3C3C3C),
                                                    size: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 140,
                                    width: 288,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xffF0F0F0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              dmSansText(
                                                  text: "20 May, 2024",
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xff3C3C3C),
                                                  size: 14),
                                              Container(
                                                height: 28,
                                                width: 62,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                        color:
                                                            Color(0xffEEC32A))),
                                                child: Center(
                                                  child: dmSansText(
                                                      text: "Pending",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xffEEC32A),
                                                      size: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          dmSansText(
                                              text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e",
                                              textAlign: TextAlign.start,
                                              weight: FontWeight.w500,
                                              color: Color(0xff3C3C3C),
                                              size: 12),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor:
                                                        Color(0xffB6465A),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  dmSansText(
                                                      text: "Loss of Pay",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff3C3C3C),
                                                      size: 14),
                                                ],
                                              ),
                                              Center(
                                                child: dmSansText(
                                                    text: "01 Day ( 8.00 Hrs)",
                                                    textAlign: TextAlign.center,
                                                    weight: FontWeight.w500,
                                                    color: Color(0xff3C3C3C),
                                                    size: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 140,
                                    width: 288,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xffF0F0F0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              dmSansText(
                                                  text: "20 May, 2024",
                                                  textAlign: TextAlign.center,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xff3C3C3C),
                                                  size: 14),
                                              Container(
                                                height: 28,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff45E88E))),
                                                child: Center(
                                                  child: dmSansText(
                                                      text: "Approved",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff45E88E),
                                                      size: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          dmSansText(
                                              text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e",
                                              textAlign: TextAlign.start,
                                              weight: FontWeight.w500,
                                              color: Color(0xff3C3C3C),
                                              size: 12),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor:
                                                        Color(0xff45E88E),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  dmSansText(
                                                      text: "Casual Leave",
                                                      textAlign:
                                                          TextAlign.center,
                                                      weight: FontWeight.w500,
                                                      color: Color(0xff3C3C3C),
                                                      size: 14),
                                                ],
                                              ),
                                              Center(
                                                child: dmSansText(
                                                    text: "01 Day ( 8.00 Hrs)",
                                                    textAlign: TextAlign.center,
                                                    weight: FontWeight.w500,
                                                    color: Color(0xff3C3C3C),
                                                    size: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              )),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : LeaveApplyScreen();
  }
}
