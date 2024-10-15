import 'package:cloudi5techonologyattendanceapp/Staffs/ForgetPassword/fogetController.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/VerifyOtp/verifyOtpScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../customWidgets/customWidgets.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final ForgetPasswordController forgetPasswordController =
      Get.put(ForgetPasswordController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Form(
        key: forgetPasswordController.formKey2,
        child: Container(
          height: height / 1,
          width: width / 1,
          decoration: const BoxDecoration(gradient: gradientButtonColor2),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Container(
                  height: 83,
                  width: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/cloudi5logo.png"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 46,
                ),
                Container(
                  height: 442,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: whiteColor.withOpacity(.4)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 36,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: dmSansText(
                              text: "Forgot password",
                              textAlign: TextAlign.center,
                              weight: FontWeight.w500,
                              color: Color(0xff1E1E1E),
                              size: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const dmSansText(
                            text:
                                "Please enter your Email to receive a verification code",
                            textAlign: TextAlign.start,
                            weight: FontWeight.w400,
                            color: Color(0xff666666),
                            size: 14),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomTextField(
                          keyboardType: TextInputType.emailAddress,
                          hinttext: "Enter your Email",
                          controller: forgetPasswordController.emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }

                            String pattern =
                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z0-9@.\-_]')),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        GradientButton(
                          text: 'Continue',
                          widht: 290,
                          height: 42,
                          onPressed: () {
                            if (forgetPasswordController
                                        .formKey2.currentContext !=
                                    null &&
                                forgetPasswordController.formKey2.currentState!
                                    .validate()) {
                              Get.off(OtpScreen(
                                email: forgetPasswordController
                                    .emailController.text
                                    .toString(),
                              ));
                            } else {
                              print("Form is invalid");
                              Get.snackbar("Validation Error",
                                  "Please enter valid details",
                                  snackPosition: SnackPosition.BOTTOM);
                            }
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
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
                                size: 14),
                            SizedBox(
                              width: 5,
                            ),
                            dmSansText(
                                text: "sign in",
                                textAlign: TextAlign.center,
                                weight: FontWeight.w400,
                                color: Color(0xff033574),
                                size: 14),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
