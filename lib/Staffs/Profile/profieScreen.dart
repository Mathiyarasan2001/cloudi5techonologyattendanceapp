import 'package:cloudi5techonologyattendanceapp/Staffs/Profile/profileController.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/customWidgets.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController profileController = Get.put(ProfileController());

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffD6D6D6),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
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
                      "Profile",
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
                height: 84,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFFFFF)),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/image.jpeg"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              dmSansText(
                                  textAlign: TextAlign.center,
                                  text: "Dinesh Kumar",
                                  color: Color(0xff3C3C3C),
                                  weight: FontWeight.w700,
                                  size: 16),
                              dmSansText(
                                  textAlign: TextAlign.center,
                                  text: "SEO",
                                  color: Color(0xff3C3C3C),
                                  weight: FontWeight.w400,
                                  size: 12),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 84,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFFFFF)),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              dmSansText(
                                  textAlign: TextAlign.center,
                                  text: "Mail ID :",
                                  color: Color(0xff3C3C3C),
                                  weight: FontWeight.w400,
                                  size: 12),
                              SizedBox(
                                height: 5,
                              ),
                              dmSansText(
                                  textAlign: TextAlign.center,
                                  text: "Emp ID :",
                                  color: Color(0xff3C3C3C),
                                  weight: FontWeight.w400,
                                  size: 12),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              dmSansText(
                                  textAlign: TextAlign.center,
                                  text: "dineshkumar@gmail.com",
                                  color: Color(0xff3C3C3C),
                                  weight: FontWeight.w500,
                                  size: 14),
                              SizedBox(
                                height: 5,
                              ),
                              dmSansText(
                                  textAlign: TextAlign.center,
                                  text: "02155464594",
                                  color: Color(0xff3C3C3C),
                                  weight: FontWeight.w500,
                                  size: 14),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 400,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFFFFF)),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 21, right: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          const Color(0xff34346D)
                                              .withOpacity(.1),
                                          const Color(0xffB6465A)
                                              .withOpacity(.1)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const GradientIcon(
                                      Icons.notifications_none,
                                      size: 12,
                                      gradient: gradientButtonColor1),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const dmSansText(
                                    text: "Push Notification",
                                    textAlign: TextAlign.center,
                                    weight: FontWeight.w500,
                                    color: Color(0xff3C3C3C),
                                    size: 12),
                              ],
                            ),
                            Switch(
                              value: value,
                              onChanged: (newValue) {
                                setState(() {
                                  value = newValue;
                                });
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),

                        // Row(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Row(
                        //       children: [
                        //         Container(
                        //           height: 32,
                        //           width: 32,
                        //           decoration: BoxDecoration(
                        //             gradient: LinearGradient(
                        //               colors: [
                        //                 const Color(0xff34346D).withOpacity(.1),
                        //                 const Color(0xffB6465A).withOpacity(.1),
                        //               ],
                        //             ),
                        //             borderRadius: BorderRadius.circular(100),
                        //           ),
                        //           child: GradientIcon(
                        //             isDarkMode
                        //                 ? Icons.light_mode
                        //                 : Icons.dark_mode,
                        //             size: 12,
                        //             gradient: gradientButtonColor1,
                        //           ),
                        //         ),
                        //         const SizedBox(
                        //           width: 12,
                        //         ),
                        //         dmSansText(
                        //           text: isDarkMode ? "Light Mode" : "Dark Mode",
                        //           textAlign: TextAlign.center,
                        //           weight: FontWeight.w500,
                        //           color: const Color(0xff3C3C3C),
                        //           size: 12,
                        //         ),
                        //       ],
                        //     ),
                        //     IconButton(
                        //       onPressed: () {
                        //         toggleTheme();
                        //       },
                        //       icon: isDarkMode
                        //           ? const Icon(
                        //               Icons.dark_mode,
                        //               color: blackColor,
                        //             )
                        //           : const Icon(
                        //               Icons.light_mode,
                        //               color: blackColor,
                        //             ),
                        //     ),
                        //   ],
                        // ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color(0xff34346D).withOpacity(.1),
                                        const Color(0xffB6465A).withOpacity(.1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Obx(() => GradientIcon(
                                        profileController.isDarkMode.value
                                            ? Icons.light_mode
                                            : Icons.dark_mode,
                                        size: 12,
                                        gradient: gradientButtonColor1,
                                      )),
                                ),
                                const SizedBox(width: 12),
                                Obx(() => dmSansText(
                                      text: profileController.isDarkMode.value
                                          ? "Light Mode"
                                          : "Dark Mode",
                                      textAlign: TextAlign.center,
                                      weight: FontWeight.w500,
                                      color: const Color(0xff3C3C3C),
                                      size: 12,
                                    )),
                              ],
                            ),
                            Obx(() => IconButton(
                                  onPressed: () {
                                    profileController.toggleTheme();
                                  },
                                  icon: Icon(
                                    profileController.isDarkMode.value
                                        ? Icons.light_mode
                                        : Icons.dark_mode,
                                    color: blackColor,
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Custom_Container(
                            text: "Edit Profile",
                            icon: Icons.person_2_outlined),
                        const SizedBox(
                          height: 12,
                        ),
                        const Custom_Container(
                            text: "Holiday Calendar",
                            icon: Icons.calendar_month),
                        const SizedBox(
                          height: 12,
                        ),
                        const Custom_Container(
                            text: "Pay Slip", icon: Icons.person_2_outlined),
                        const SizedBox(
                          height: 12,
                        ),
                        const Custom_Container(
                            text: "Terms & Conditions",
                            icon: Icons.person_2_outlined),
                        const SizedBox(
                          height: 12,
                        ),
                        const Custom_Container(
                            text: "Privacy Policy",
                            icon: Icons.person_2_outlined),
                        const SizedBox(
                          height: 12,
                        ),
                        const Custom_Container(
                            text: "Log Out", icon: Icons.logout),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
