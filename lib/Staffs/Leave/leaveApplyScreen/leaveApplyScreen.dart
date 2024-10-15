import 'package:cloudi5techonologyattendanceapp/Staffs/Leave/LeaveScreen/leaveScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class LeaveApplyScreen extends StatefulWidget {
  const LeaveApplyScreen({super.key});

  @override
  State<LeaveApplyScreen> createState() => _LeaveApplyScreenState();
}

class _LeaveApplyScreenState extends State<LeaveApplyScreen> {
  bool isTapped = true;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
    });
    Navigator.of(context).pop();
  }

  void _showCalendarDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TableCalendar<DateTime>(
                  firstDay: DateTime.utc(1, 1, 2020),
                  lastDay: DateTime.utc(1, 1, 2050),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  onDaySelected: _onDaySelected,
                  calendarStyle: CalendarStyle(
                    selectedDecoration: BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.rectangle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.3),
                      shape: BoxShape.rectangle,
                    ),
                    defaultDecoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    weekendDecoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return isTapped
        ? Scaffold(
            // backgroundColor: const Color(0xffD6D6D6),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
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
                            "Apply Leave",
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
                      height: 552,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: dmSansText(
                                      textAlign: TextAlign.center,
                                      text: "Leave Type",
                                      color: Color(0xff3C3C3C),
                                      weight: FontWeight.w500,
                                      size: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 44,
                                  child: DropDownTextField(
                                    clearOption: true,
                                    textFieldDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xffE8E8E8)),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xffE8E8E8)),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        hintText: "Select leave type",
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff8C8C8C))),
                                    dropDownItemCount: 6,
                                    dropDownList: const [
                                      DropDownValueModel(
                                          name: 'Casual Leave', value: '1'),
                                      DropDownValueModel(
                                          name: 'Compensate', value: '2'),
                                      DropDownValueModel(
                                          name: 'Female Sick Leave',
                                          value: '3'),
                                      DropDownValueModel(
                                          name: 'Loss of Pay', value: '4'),
                                      DropDownValueModel(
                                          name: 'Medical Leave', value: '5'),
                                      DropDownValueModel(
                                          name: 'Permission', value: '6'),
                                    ],
                                    onChanged: (val) {
                                      print(val);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: dmSansText(
                                      textAlign: TextAlign.center,
                                      text: "Duration",
                                      color: Color(0xff3C3C3C),
                                      weight: FontWeight.w500,
                                      size: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 44,
                                  child: DropDownTextField(
                                    clearOption: true,
                                    textFieldDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xffE8E8E8)),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xffE8E8E8)),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        hintText: "Select duration",
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff8C8C8C))),
                                    dropDownItemCount: 6,
                                    dropDownList: const [
                                      DropDownValueModel(
                                          name: 'Single day', value: '1'),
                                      DropDownValueModel(
                                          name: 'Multiple days', value: '2'),
                                      DropDownValueModel(
                                          name: 'Hours', value: '3'),
                                    ],
                                    onChanged: (val) {
                                      print(val);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: dmSansText(
                                      textAlign: TextAlign.center,
                                      text: "Date",
                                      color: Color(0xff3C3C3C),
                                      weight: FontWeight.w500,
                                      size: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                GestureDetector(
                                  onTap: _showCalendarDialog,
                                  child: Container(
                                    height: 44,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffE8E8E8)),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          '${_selectedDay.toLocal()}'
                                              .split(' ')[0],
                                          style: const TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff8C8C8C)),
                                        ),
                                        GradientIcon(Icons.calendar_month,
                                            size: 24,
                                            gradient: gradientButtonColor1)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: dmSansText(
                                      textAlign: TextAlign.center,
                                      text: "Reason",
                                      color: Color(0xff3C3C3C),
                                      weight: FontWeight.w500,
                                      size: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xffE8E8E8)),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xffE8E8E8)),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      hintText: "Reason",
                                      hintStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff8C8C8C))),
                                )
                              ],
                            ),
                            GradientButton(
                              height: 44,
                              widht: 323,
                              text: "Apply Leave",
                              onPressed: () {
                                setState(() {
                                  isTapped = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : LeaveScreen(); // This will navigate to the LeaveScreen
  }
}
