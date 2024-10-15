import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Homecontroller extends GetxController {
  void showBottomSheet(VoidCallback onPressed) {
    Get.bottomSheet(
      Container(
        height: 500,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 6,
                decoration: BoxDecoration(
                  color: const Color(0xffCFCFCF),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const dmSansText(
                  text: "Confirm Checkout",
                  textAlign: TextAlign.center,
                  weight: FontWeight.w700,
                  color: Color(0xff464646),
                  size: 16),
              const Divider(
                color: Color(0xffEAEAEA),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      dmSansText(
                          text: "Today’s Work Hrs",
                          textAlign: TextAlign.center,
                          weight: FontWeight.w500,
                          color: Color(0xff000000),
                          size: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ColorText(
                            size: 20,
                            textAlign: TextAlign.center,
                            weight: FontWeight.w700,
                            text: "02:30",
                          ),
                          dmSansText(
                              textAlign: TextAlign.center,
                              text: "Hrs",
                              color: Color(0xff000000),
                              weight: FontWeight.w400,
                              size: 12),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 63,
                    child: VerticalDivider(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      dmSansText(
                          text: "Break Time",
                          textAlign: TextAlign.center,
                          weight: FontWeight.w500,
                          color: Color(0xff000000),
                          size: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ColorText(
                            size: 20,
                            textAlign: TextAlign.center,
                            weight: FontWeight.w700,
                            text: "00:00",
                          ),
                          dmSansText(
                              textAlign: TextAlign.center,
                              text: "Hrs",
                              color: Color(0xff000000),
                              weight: FontWeight.w400,
                              size: 12),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 63,
                    child: VerticalDivider(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      dmSansText(
                          text: "Over Time",
                          textAlign: TextAlign.center,
                          weight: FontWeight.w500,
                          color: Color(0xff000000),
                          size: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ColorText(
                            size: 20,
                            textAlign: TextAlign.center,
                            weight: FontWeight.w700,
                            text: "00:05",
                          ),
                          dmSansText(
                              textAlign: TextAlign.center,
                              text: "Hrs",
                              color: Color(0xff000000),
                              weight: FontWeight.w400,
                              size: 12),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: dmSansText(
                    text: "Confirm Checkout",
                    textAlign: TextAlign.center,
                    weight: FontWeight.w700,
                    color: Color(0xff464646),
                    size: 16),
              ),
              SizedBox(
                width: 320,
                child: TextFormField(
                  maxLines: 5,
                  autofocus: true,
                  cursorHeight: 17,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffDBDBDB),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffDBDBDB),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Write a comment.....",
                    hintStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 44,
                    width: 132,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffDBDBDB)),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: dmSansText(
                          text: "Cancel",
                          textAlign: TextAlign.center,
                          weight: FontWeight.w700,
                          color: Color(0xffDBDBDB),
                          size: 16),
                    ),
                  ),
                  GradientButton(
                    text: "Check Out",
                    height: 44,
                    widht: 132,
                    onPressed: onPressed,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
