import 'package:cloudi5techonologyattendanceapp/Staffs/Login/loginScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SetPasswordController extends GetxController {
  final formKey3 = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();

  void submit(BuildContext context) {
    if (formKey3.currentState?.validate() ?? false) {
      if (passwordController.text == newPasswordController.text) {
        showSuccessDialog(context);
      } else {
        Get.snackbar(
          "Validation Error",
          "The passwords do not match. Please enter correctly.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } else {
      Get.snackbar(
        "Validation Error",
        "Please enter valid details.",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    passwordController.clear();
    newPasswordController.clear();
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return _LottieDialog();
      },
    );
  }
}

class _LottieDialog extends StatefulWidget {
  @override
  _LottieDialogState createState() => _LottieDialogState();
}

class _LottieDialogState extends State<_LottieDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
              width: 51,
              child: Lottie.asset(
                "assets/clDone.json",
                controller: _controller,
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "Successful",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xff1E1E1E),
              ),
            ),
            const Column(
              children: [
                Text(
                  "Congratulations! Your password has",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "been changed. Click continue to login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            GradientButton(
              text: 'Back to Sign In',
              widht: 250,
              height: 42,
              onPressed: () {
                Get.off(const LoginScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
