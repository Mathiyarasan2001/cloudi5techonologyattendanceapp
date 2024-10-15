import 'package:cloudi5techonologyattendanceapp/Staffs/ForgetPassword/forgetPasswordScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/Login/loginController.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Logincontroller logincontroller = Get.put(Logincontroller());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Form(
        key: logincontroller.formKey1,
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const ColorText(
                                text: "Welcome",
                                size: 32,
                                weight: FontWeight.w700,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 42,
                                width: 35,
                                child: Lottie.asset("assets/hi.json",
                                    fit: BoxFit.contain),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const dmSansText(
                              text:
                                  "Welcome back to Cloudi5\n Have a good time",
                              textAlign: TextAlign.center,
                              weight: FontWeight.w400,
                              color: Color(0xff545454),
                              size: 14),
                          const SizedBox(
                            height: 35,
                          ),
                          CustomTextField(
                            keyboardType: TextInputType.emailAddress,
                            hinttext: "Enter your Email",
                            controller: logincontroller.emailController,
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
                            height: 20,
                          ),
                          CustomTextField(
                            keyboardType: TextInputType.visiblePassword,
                            hinttext: "Enter your Password",
                            controller: logincontroller.passwordController,
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
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: logincontroller.rememberMe,
                                    onChanged: (value) {
                                      setState(() {
                                        logincontroller.rememberMe = value!;
                                      });
                                    },
                                  ),
                                  const InterText(
                                      text: "Remember me",
                                      textAlign: TextAlign.center,
                                      weight: FontWeight.w500,
                                      color: Color(0xff6C7278),
                                      size: 12),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(const ForgetPasswordScreen());
                                },
                                child: const InterText(
                                    text: "Forgot Password ?",
                                    textAlign: TextAlign.center,
                                    weight: FontWeight.w700,
                                    color: Color(0xff033574),
                                    size: 12),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF34346D), Color(0xFFB6465A)],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                fixedSize: const Size(290, 42),
                              ),
                              onPressed: () {
                                logincontroller.submit();
                              },
                              child: const dmSansText(
                                textAlign: TextAlign.center,
                                text: "Login",
                                color: whiteColor,
                                weight: FontWeight.w700,
                                size: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
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
