import 'package:cloudi5techonologyattendanceapp/Staffs/SetNewPassword/setNewPasswordController.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  final SetPasswordController setPasswordController =
      Get.put(SetPasswordController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Form(
        key: setPasswordController.formKey3,
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
                              text: "Set New Password",
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
                                "Your password must be different from your previous password.",
                            textAlign: TextAlign.start,
                            weight: FontWeight.w400,
                            color: Color(0xff666666),
                            size: 12),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomTextField(
                          keyboardType: TextInputType.name,
                          hinttext: "Enter your Email",
                          controller: setPasswordController.passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }

                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }

                            String pattern =
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value)) {
                              return 'Password must contain an uppercase letter, lowercase letter, number, and special character';
                            }
                            return null;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          keyboardType: TextInputType.name,
                          hinttext: "Confirm Password",
                          controller:
                              setPasswordController.newPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }

                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }

                            String pattern =
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value)) {
                              return 'Password must contain an uppercase letter, lowercase letter, number, and special character';
                            }
                            return null;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        GradientButton(
                          text: 'Save Changes',
                          widht: 290,
                          height: 42,
                          onPressed: () {
                            setPasswordController.submit(context);

                            // if (setPasswordController.formKey3.currentContext !=
                            //         null &&
                            //     setPasswordController.formKey3.currentState!
                            //         .validate()) {
                            //   if (setPasswordController
                            //           .passwordController.text ==
                            //       setPasswordController
                            //           .newPasswordController.text) {
                            //     setPasswordController
                            //         .showSuccessDialog(context);
                            //   } else if (setPasswordController
                            //           .passwordController.text !=
                            //       setPasswordController
                            //           .newPasswordController.text) {
                            //     Get.snackbar(
                            //       "Validation Error",
                            //       "The password are not same , please enter Correctly",
                            //       snackPosition: SnackPosition.BOTTOM,
                            //     );
                            //   }
                            // } else {
                            //   Get.snackbar(
                            //     "Validation Error",
                            //     "Please enter valid details.",
                            //     snackPosition: SnackPosition.BOTTOM,
                            //   );
                            // }
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
                                color: baseTextColor,
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
