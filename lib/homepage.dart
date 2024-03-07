import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/login_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Hollaa',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 30),
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
                height: 300, child: Lottie.asset("assets/animation1.json")),
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 20),
                      color: Colors.white,
                      fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 20),
                      color: Colors.white,
                      fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child: controller.loading.value
                    ? const CircularProgressIndicator()
                    : Container(
                        height: 70,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 176, 39, 80)),
                        child: Center(
                          child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 20),
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
              );
            })
          ],
        ),
      ),
    );
  }
}
