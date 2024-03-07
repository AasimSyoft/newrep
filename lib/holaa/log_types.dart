import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/holaa/phone_verification.dart';

class LogTypesPage extends StatefulWidget {
  const LogTypesPage({super.key});

  @override
  State<LogTypesPage> createState() => _LogTypesPageState();
}

class _LogTypesPageState extends State<LogTypesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_new))),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '  Lets  meet new\n  people around you',
            style: GoogleFonts.inter(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFFFFFF)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 40),
            height: 60,
            width: 370,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff767676)),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.apple,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text("Login with Apple",
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffFFFFFF)))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 40),
            height: 60,
            width: 370,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff767676)),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icong.png"),
                const SizedBox(
                  width: 10,
                ),
                Text("Login with Google",
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffFFFFFF)))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Container(
          //   margin: const EdgeInsets.only(left: 50, right: 40),
          //   height: 60,
          //   width: 370,
          //   decoration: BoxDecoration(
          //       border: Border.all(color: const Color(0xff767676)),
          //       borderRadius: BorderRadius.circular(30)),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Image.asset("assets/Vector.png"),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Text("Login with LinkedIn",
          //           style: GoogleFonts.inter(
          //               fontSize: 16,
          //               fontWeight: FontWeight.w500,
          //               color: const Color(0xffFFFFFF)))
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "------ or -------",
            style: GoogleFonts.inter(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: const Color(0xffFFFFFF)),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Get.to(() => const Phoneverify());
            },
            child: Container(
              margin: const EdgeInsets.only(left: 50, right: 40),
              height: 60,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color(0xffBFE71E),
                  border: Border.all(color: const Color(0xff767676)),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone_android,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Login with Phone",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 8, 8, 8))),
                ],
              ),
            ),
          ),
          const Spacer(),
          MaterialButton(
            height: 60,
            minWidth: 340,
            color: const Color(0xffBFE71E),
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Text(
              "Login with Phone",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffBFE71E),
                side: const BorderSide(
                    width: 3, color: Colors.brown), //border width and color
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.all(20)),
            child: const Text("Login with Phone"),
          ),

          const SizedBox(
            height: 220,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       "Dont have an  account",
          //       style: GoogleFonts.inter(
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //           color: const Color.fromARGB(255, 145, 139, 139)),
          //     ),
          //     TextButton(
          //         onPressed: () {},
          //         child: Text(
          //           "Sign Up",
          //           style: GoogleFonts.inter(
          //               fontSize: 14,
          //               fontWeight: FontWeight.w600,
          //               color: const Color(0xffBFE81F)),
          //         ))
          //   ],
          // )
        ],
      )),
    );
  }
}
