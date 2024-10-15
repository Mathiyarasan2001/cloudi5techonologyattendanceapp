import 'package:cloudi5techonologyattendanceapp/Staffs/SetNewPassword/setNewPassword.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/VerifyOtp/otpController.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  final String email;
  const OtpScreen({super.key, required this.email});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final Otpcontroller otpcontroller = Get.put(Otpcontroller());
  bool isTapped = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Container(
        height: height / 1,
        width: width / 1,
        decoration: const BoxDecoration(gradient: gradientButtonColor2),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              Container(
                height: 83,
                width: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/cloudi5logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 46),
              Container(
                height: 442,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: whiteColor.withOpacity(.4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 36),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: dmSansText(
                          text: "Check Your Email",
                          textAlign: TextAlign.center,
                          weight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                          size: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Remove `const` from here
                      dmSansText(
                        text:
                            "We sent a reset link to ${widget.email.toString()}, enter the 5-digit code mentioned in the email.",
                        textAlign: TextAlign.justify,
                        weight: FontWeight.w400,
                        color: Color(0xff666666),
                        size: 12,
                      ),
                      const SizedBox(height: 40),
                      PinCodeTextField(
                        controller: otpcontroller.otpController,
                        onCompleted: (v) {
                          setState(() {});
                        },
                        enableActiveFill: true,
                        showCursor: false,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(10),
                          selectedColor:
                              const Color(0xff033574).withOpacity(.5),
                          activeColor: const Color(0xff033574).withOpacity(.5),
                          inactiveColor: whiteColor,
                          selectedFillColor: whiteColor,
                          activeFillColor: whiteColor,
                          inactiveFillColor: whiteColor,
                          fieldHeight: 50,
                          fieldWidth: 50,
                        ),
                        keyboardType: TextInputType.number,
                        textStyle: const TextStyle(
                          color: Color(0xff033574),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        autoDismissKeyboard: true,
                        appContext: context,
                        length: 5,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                      ),
                      isTapped
                          ? const dmSansText(
                              text: "00:12",
                              textAlign: TextAlign.center,
                              weight: FontWeight.w600,
                              color: Color(0xff023575),
                              size: 14,
                            )
                          : const dmSansText(
                              text: "Verified",
                              textAlign: TextAlign.center,
                              weight: FontWeight.w600,
                              color: Color(0xff2FAC4A),
                              size: 14,
                            ),
                      const SizedBox(height: 32),
                      GradientButton(
                        text: 'Continue',
                        widht: 290,
                        height: 42,
                        onPressed: () {
                          setState(() {
                            isTapped = !isTapped;
                          });
                          Future.delayed(
                            const Duration(seconds: 2),
                            () => Get.to(const SetNewPasswordScreen()),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      isTapped
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                dmSansText(
                                  text: "Haven’t got the email yet?",
                                  textAlign: TextAlign.center,
                                  weight: FontWeight.w400,
                                  color: Color(0xff545454),
                                  size: 14,
                                ),
                                SizedBox(width: 5),
                                dmSansText(
                                  text: "Resend email",
                                  textAlign: TextAlign.center,
                                  weight: FontWeight.w400,
                                  color: Color(0xff033574),
                                  size: 14,
                                ),
                              ],
                            )
                          : const SizedBox(),
                      const SizedBox(height: 25),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 16,
                            color: baseTextColor,
                          ),
                          dmSansText(
                            text: "Back to",
                            textAlign: TextAlign.center,
                            weight: FontWeight.w400,
                            color: Color(0xff545454),
                            size: 14,
                          ),
                          SizedBox(width: 5),
                          dmSansText(
                            text: "sign in",
                            textAlign: TextAlign.center,
                            weight: FontWeight.w400,
                            color: Color(0xff033574),
                            size: 14,
                          ),
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
    );
  }
}
