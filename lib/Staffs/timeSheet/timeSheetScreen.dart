import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/timeSheet/timeSheetController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class TimeSheetScreen extends StatefulWidget {
  const TimeSheetScreen({super.key});

  @override
  State<TimeSheetScreen> createState() => _TimeSheetScreenState();
}

class _TimeSheetScreenState extends State<TimeSheetScreen> {
  final TimeSheetController _controller = Get.put(TimeSheetController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final radius = (height + width) / 30;
    return Scaffold(
      // backgroundColor: const Color(0xffD6D6D6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
                      "TimeSheet",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: height / 7,
                width: width / 1.1,
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(16)),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: radius,
                        backgroundImage: const AssetImage("assets/image.jpeg"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height / 15,
                            width: width / 1.7,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    dmSansText(
                                        textAlign: TextAlign.center,
                                        text: "Total Work Hrs",
                                        color: Color(0xff000000),
                                        weight: FontWeight.w500,
                                        size: 14),
                                    dmSansText(
                                        textAlign: TextAlign.center,
                                        text: "164/192 Hrs",
                                        color: Color(0xff232323),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 357,
                width: 320,
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Obx(() => Container(
                            height: 52,
                            width: 280,
                            decoration: BoxDecoration(
                                gradient: gradientButtonColor2,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: _controller.decrementDate,
                                        child: Container(
                                          height: 44,
                                          width: 44,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: const Center(
                                              child: GradientIcon(
                                                  Icons.arrow_back_ios_new,
                                                  size: 16,
                                                  gradient:
                                                      gradientButtonColor1)),
                                        ),
                                      ),
                                      // InkWell(
                                      //   onTap: () {
                                      //     showDialog(
                                      //       context: context,
                                      //       builder: (context) {
                                      //         return Dialog(
                                      //           shape: RoundedRectangleBorder(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(12),
                                      //           ),
                                      //           child: Container(
                                      //             color: backgroundColor,
                                      //             height: 400,
                                      //             width: 320,
                                      //             child: TableCalendar(
                                      //               firstDay: DateTime.utc(
                                      //                   2020, 1, 1),
                                      //               lastDay: DateTime.utc(
                                      //                   2030, 12, 31),
                                      //               focusedDay: _controller
                                      //                   .selectedDate.value,
                                      //               selectedDayPredicate:
                                      //                   (day) => isSameDay(
                                      //                       _controller
                                      //                           .selectedDate
                                      //                           .value,
                                      //                       day),
                                      //               onDaySelected: (selectedDay,
                                      //                   focusedDay) {
                                      //                 _controller.selectedDate
                                      //                     .value = selectedDay;
                                      //               },
                                      //               calendarStyle:
                                      //                   CalendarStyle(
                                      //                 selectedDecoration:
                                      //                     BoxDecoration(
                                      //                   gradient:
                                      //                       gradientButtonColor1,
                                      //                   shape:
                                      //                       BoxShape.rectangle,
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           ),
                                      //         );
                                      //       },
                                      //     );
                                      //   },
                                      //   child: ColorText(
                                      //     size: 14,
                                      //     text: DateFormat('d MMMM y').format(
                                      //         _controller.selectedDate.value),
                                      //     textAlign: TextAlign.center,
                                      //     weight: FontWeight.w500,
                                      //   ),
                                      // ),






















                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Dialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                                child: Container(
                                                  color: backgroundColor,
                                                  height: 400,
                                                  width: 320,
                                                  child: TableCalendar(
                                                    firstDay: DateTime.utc(2020, 1, 1),
                                                    lastDay: DateTime.utc(2030, 12, 31),
                                                    focusedDay: _controller.selectedDate.value,
                                                    selectedDayPredicate: (day) => isSameDay(
                                                      _controller.selectedDate.value,
                                                      day,
                                                    ),
                                                    onDaySelected: (selectedDay, focusedDay) {
                                                      // Update the selected date
                                                      _controller.selectedDate.value = selectedDay;

                                                      // Close the dialog after selecting a date
                                                      Navigator.pop(context);
                                                    },
                                                    calendarStyle: CalendarStyle(
                                                      selectedDecoration: BoxDecoration(
                                                        gradient: gradientButtonColor1,
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Obx(() => ColorText(
                                          size: 14,
                                          text: DateFormat('d MMMM y').format(_controller.selectedDate.value),
                                          textAlign: TextAlign.center,
                                          weight: FontWeight.w500,
                                        )),
                                      ),
















                                      GestureDetector(
                                        onTap: _controller.incrementDate,
                                        child: Container(
                                          height: 44,
                                          width: 44,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: const Center(
                                              child: GradientIcon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  size: 16,
                                                  gradient:
                                                      gradientButtonColor1)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    // Center(
                    //   child: Obx(() => Container(
                    //         height: 52,
                    //         width: 280,
                    //         decoration: BoxDecoration(
                    //             gradient: gradientButtonColor2,
                    //             borderRadius: BorderRadius.circular(8)),
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(4),
                    //           child: Row(
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               GestureDetector(
                    //                 onTap: _controller
                    //                     .decrementDate, // Decrement on tap
                    //                 child: Container(
                    //                   height: 44,
                    //                   width: 44,
                    //                   decoration: BoxDecoration(
                    //                       color: Colors.white,
                    //                       borderRadius:
                    //                           BorderRadius.circular(4)),
                    //                   child: const Center(
                    //                       child: GradientIcon(
                    //                           Icons.arrow_back_ios_new,
                    //                           size: 16,
                    //                           gradient: gradientButtonColor1)),
                    //                 ),
                    //               ),
                    //               ColorText(
                    //                 size: 14,
                    //                 text: DateFormat('d MMMM y')
                    //                     .format(_controller.currentDate.value),
                    //                 textAlign: TextAlign.center,
                    //                 weight: FontWeight.w500,
                    //               ),
                    //               GestureDetector(
                    //                 onTap: _controller
                    //                     .incrementDate, // Increment on tap
                    //                 child: Container(
                    //                   height: 44,
                    //                   width: 44,
                    //                   decoration: BoxDecoration(
                    //                       color: Colors.white,
                    //                       borderRadius:
                    //                           BorderRadius.circular(4)),
                    //                   child: const Center(
                    //                       child: GradientIcon(
                    //                           Icons.arrow_forward_ios_outlined,
                    //                           size: 16,
                    //                           gradient: gradientButtonColor1)),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       )),
                    // ),







                    Text("aslnkjdnclksdnc")
,                    SizedBox(
                      height: 200,
                      width: 280,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              LinearPercentIndicator(
                                  barRadius: const Radius.circular(8),
                                  width: 140.0,
                                  lineHeight: 14.0,
                                  percent: 0.85,
                                  backgroundColor:
                                      const Color(0xff34346D).withOpacity(.2),
                                  progressColor: const Color(0xff34346D)),
                              LinearPercentIndicator(
                                  barRadius: const Radius.circular(8),
                                  width: 140.0,
                                  lineHeight: 14.0,
                                  percent: 0.7,
                                  backgroundColor:
                                      const Color(0xff34346D).withOpacity(.2),
                                  progressColor:
                                      Color(0xff34346D).withOpacity(.7)),
                              LinearPercentIndicator(
                                  barRadius: const Radius.circular(8),
                                  width: 140.0,
                                  lineHeight: 14.0,
                                  percent: 0.6,
                                  backgroundColor:
                                      const Color(0xffEEC32A).withOpacity(.2),
                                  progressColor: const Color(0xffEEC32A)),
                              LinearPercentIndicator(
                                  barRadius: const Radius.circular(8),
                                  width: 140.0,
                                  lineHeight: 14.0,
                                  percent: 0.8,
                                  backgroundColor:
                                      const Color(0xffB6465A).withOpacity(.2),
                                  progressColor: const Color(0xffB6465A)),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TimeSheetContainer(
                                  color: Color(0xff34346D),
                                  text1: "9.3",
                                  text2: "Total Hrs"),
                              TimeSheetContainer(
                                  color: Color(0xff34346D),
                                  text1: "08",
                                  text2: "Work Hrs"),
                              TimeSheetContainer(
                                  color: Color(0xffEEC32A),
                                  text1: "01",
                                  text2: "Break Hrs"),
                              TimeSheetContainer(
                                  color: Color(0xffB6465A),
                                  text1: "0.3",
                                  text2: "Overtime Hrs")
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 64,
                          width: 132,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              border: Border.all(
                                color: const Color(0xffE8E8E8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff023575)
                                        .withOpacity(.2)),
                                child: const Icon(
                                  Iconsax.import_2,
                                  color: Color(0xff023575),
                                ),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                        Container(
                          height: 64,
                          width: 132,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              border: Border.all(
                                color: const Color(0xffE8E8E8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffFF7272)
                                        .withOpacity(.2)),
                                child: const Icon(
                                  Iconsax.export_3,
                                  color: Color(0xffFF7272),
                                ),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  dmSansText(
                                      textAlign: TextAlign.center,
                                      text: "Check Out",
                                      color: Color(0xff3C3C3C),
                                      weight: FontWeight.w400,
                                      size: 14),
                                  dmSansText(
                                      textAlign: TextAlign.center,
                                      text: "06:34 PM",
                                      color: Color(0xff7E7E7E),
                                      weight: FontWeight.w400,
                                      size: 12),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
