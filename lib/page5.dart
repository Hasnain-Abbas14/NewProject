import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page6.dart';
import 'package:flutter_application_1/page7.dart';

class page5 extends StatelessWidget {
  const page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var helper = Helper();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 90,
                    ),
                    Helper().customText(
                        "Reset Password", 16, FontWeight.bold, Colors.black)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    helper.customText(
                        "New Password", 16, FontWeight.normal, Colors.black),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    helper.customText(
                        "Rest your password to recovery & Login\nto your account.",
                        12,
                        FontWeight.normal,
                        Colors.black),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Helper().customTextField(
                    Icons.visibility_off,
                    Colors.grey,
                    20,
                    "New password",
                    10,
                    20,
                    Colors.grey,
                    2,
                    12,
                    Colors.black,
                    2,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Helper().customTextField(
                    Icons.visibility_off,
                    Colors.grey,
                    20,
                    "Retype Password",
                    10,
                    20,
                    Colors.grey,
                    2,
                    12,
                    Colors.black,
                    2,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Helper().customButton(
                    page6(), "Save", Colors.white, Colors.black, 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
