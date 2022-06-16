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
                      width: 60,
                    ),
                    Helper().customText(
                        "Reset Password", 25, FontWeight.bold, Colors.black)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:60.0,left: 30,right:30),
                child: Row(
                  children: [
                    helper.customText(
                        "New Password", 20, FontWeight.bold, Colors.black),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0,left: 30,right: 30),
                child: Row(
                  children: [
                    helper.customText(
                        "Rest your password to recovery & Login\nto your account.",
                        15,
                        FontWeight.normal,
                        Colors.grey.shade400),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:35.0,left:30,right: 30),
                child: Helper().customTextField(
                    Icons.visibility_off,
                    Colors.grey,
                    20,
                    "New password",
                    17,
                    20,
                    Colors.grey,
                    0.5,
                    12,
                    Colors.black,
                    1,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0,left:30,right: 30),
                child: Helper().customTextField(
                    Icons.visibility_off,
                    Colors.grey,
                    20,
                    "Retype password",
                    17,
                    20,
                    Colors.grey,
                    1,
                    12,
                    Colors.black,
                    1,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0,left: 30,right: 30),
                child: Container(
                  width: 330,
                  child: Helper().customButton(
                      page6(), "Save", Colors.white, Colors.black, 12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
