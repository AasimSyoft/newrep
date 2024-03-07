import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Phoneverify extends StatefulWidget {
  const Phoneverify({super.key});

  @override
  State<Phoneverify> createState() => _PhoneverifyState();
}

class _PhoneverifyState extends State<Phoneverify> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("  Whats your\n  number?",
              style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffFFFFFF))),
          const SizedBox(
            height: 10,
          ),
          Text(
              "  We protect our community\n  by making sure everyone on hola\n  is real",
              style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffFFFFFF))),
          const SizedBox(
            height: 30,
          ),
          Form(
              key: _formKey,
              child: IntlPhoneField(
                keyboardType: TextInputType.number,
                focusNode: focusNode,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 156, 32, 32),
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(),
                  ),
                ),
                languageCode: "in",
              ))
        ],
      )),
    );
  }
}
