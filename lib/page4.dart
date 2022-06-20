import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/page5.dart';
import 'package:flutter_application_1/page7.dart';
import 'package:get/get.dart';

class page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var helper = Helper();
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(child: Helper().customImage("images/Logo.png", 150, 150)),
              Helper().customText("Sign Up", 25, FontWeight.w600, Colors.black),
              SizedBox(
                height: 15,
              ),
              Helper().customText("Create a new account", 15, FontWeight.normal,
                  Colors.grey.shade400),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
                child: Helper().customTextFieldPreIcon(
                    Icons.email_outlined,
                    Colors.grey,
                    20,
                    "Email",
                    20,
                    20,
                    Colors.grey,
                    1,
                    12,
                    Colors.black,
                    1,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
                child: Helper().customTextFieldPreIcon(
                    Icons.people_alt_outlined,
                    Colors.grey,
                    20,
                    "Username",
                    20,
                    20,
                    Colors.grey,
                    1,
                    12,
                    Colors.black,
                    1,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
                child: Helper().customTextFieldPreIcon(
                    Icons.lock_outline,
                    Colors.grey,
                    20,
                    "Password",
                    20,
                    20,
                    Colors.grey,
                    1,
                    12,
                    Colors.black,
                    1,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
                child: Helper().customTextFieldPreIcon(
                    Icons.lock_outline,
                    Colors.grey,
                    20,
                    "Confirm Password",
                    20,
                    20,
                    Colors.grey,
                    1,
                    12,
                    Colors.black,
                    1,
                    12),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                child: Container(
                  // width: 330,
                  child: Container(
                    width: double.infinity,
                    child: Helper().customButton(
                        page5(), "Sign up", Colors.white, Colors.black, 12),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 30, right: 30),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Colors.grey[300],
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Helper().customText("or Sign up with Google", 15,
                        FontWeight.normal, Colors.grey),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Colors.grey[300],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 250,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      width: 330,
                      alignment: Alignment.center,
                      child: Helper().customText("Sign Up with Google", 16,
                          FontWeight.w600, Colors.black),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Helper().customText(
                      "Already member?", 16, FontWeight.w600, Colors.grey),
                  GestureDetector(
                      onTap: () {
                        Get.to(page3());
                      },
                      child: Helper().customText(
                          "Sign In", 16, FontWeight.bold, Colors.black))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
