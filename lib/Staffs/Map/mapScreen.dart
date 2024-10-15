import 'package:cloudi5techonologyattendanceapp/Staffs/BottomNav/finalview.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({super.key});

  @override
  State<Mapscreen> createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final radius = (height + width) / 8;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: radius,
                backgroundImage:
                    const AssetImage("assets/Group 1000002182.png")),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Text(
                  "You’re in out of Radius",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),

                Text(
                  "Please go to the designated location to complete the check-in process.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                // const dmSansText(
                //     textAlign: TextAlign.center,
                //     text: "You’re in out of Radius",
                //     color: blackColor,
                //     weight: FontWeight.w700,
                //     size: 17),
                // const dmSansText(
                //     textAlign: TextAlign.center,
                //     text:
                //         "Please go to the designated location to complete the check-in process.",
                //     color: blackColor,
                //     weight: FontWeight.w400,
                //     size: 16),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: gradientButtonColor1,

                //  LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [Color(0xff34346D), Color(0xffB6465A)],
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
                  Get.off(const FinalView());
                },
                child: const dmSansText(
                  textAlign: TextAlign.center,
                  text: "Go Back To Home",
                  color: whiteColor,
                  weight: FontWeight.w700,
                  size: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
