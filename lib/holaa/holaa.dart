import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/holaa/log_types.dart';

class HolaaHomeScreen extends StatefulWidget {
  const HolaaHomeScreen({super.key});

  @override
  State<HolaaHomeScreen> createState() => _HolaaHomeScreenState();
}

class _HolaaHomeScreenState extends State<HolaaHomeScreen> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Pre Registrations Are Open',
              style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xffBFE71E)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.timer,
                size: 40,
              ),
              Text(
                '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} min',
                style: GoogleFonts.inter(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xffFFFFFF)),
              )
            ],
          ),
          Text(
            'For limited time and members only',
            style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: const Color(0xffBFE71E)),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              height: Get.height * 5,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 40, 39, 39),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "100k members still counting,Hurry",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffFFFFFF)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 120,
                      child: Image.asset(
                        "assets/hola.png",
                      )),
                  const SizedBox(
                    height: 110,
                  ),
                  Container(
                    height: Get.height * .33,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 108, 106, 106),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              child: Text(
                                "Limited\nMembers only ",
                                style: GoogleFonts.inter(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xffFFFFFF)),
                              ),
                            ),
                            Stack(children: [
                              Positioned(
                                  top: 50,
                                  right: 30,
                                  child: Text(
                                    "50",
                                    style: GoogleFonts.inter(
                                        fontSize: 37,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffFFFFFF)),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(top: 25),
                                height: 110,
                                width: 110,
                                child: const CircularProgressIndicator(
                                  strokeWidth: 12,
                                  value: 0.50,
                                  color: Color.fromARGB(255, 201, 250, 5),
                                  backgroundColor:
                                      Color.fromARGB(255, 169, 175, 179),
                                ),
                              ),
                            ])
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "register now\nto get the\npro subscription for free",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffFFFFFF)),
                            ),
                            Text("Left Members",
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xffFFFFFF)))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 60),
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 201, 250, 5),
                          ),
                          child: InkWell(
                            onTap: () {
                              Get.to(() => const LogTypesPage());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Register Now',
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff000000)),
                                  ),
                                  const Icon(
                                    Icons.arrow_upward_outlined,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
