import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page4.dart';
import 'package:get/get.dart';

class page3 extends StatefulWidget {
  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var helper = Helper();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(child: Helper().customImage("images/Logo.png", 150, 150)),
              Helper().customText(
                  "Welcome Back!", 16, FontWeight.bold, Colors.black),
              SizedBox(
                height: 15,
              ),
              Helper().customText(
                  "Sign in to continue", 12, FontWeight.normal, Colors.black),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Helper().customTextFieldPreIcon(
                    Icons.person,
                    Colors.grey,
                    20,
                    "Username",
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
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Helper().customTextFieldPreIcon(
                    Icons.lock,
                    Colors.grey,
                    20,
                    "Password",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: helper.customText("Forgot Password?", 12,
                          FontWeight.normal, Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Helper().customText("Remember me and Keep me logged in", 12,
                        FontWeight.bold, Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Helper().customButton(
                    page4(), "Sign in", Colors.white, Colors.black, 12),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Helper().customText("or Sign in with Google", 12,
                        FontWeight.normal, Colors.grey),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 250,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Helper().customText("Sign in with Google", 16,
                        FontWeight.bold, Colors.black),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Helper().customText(
                      "Not memeber yet?", 12, FontWeight.bold, Colors.grey),
                  GestureDetector(
                      onTap: () {
                        Get.to(page4());
                      },
                      child: Helper().customText(
                          "Sign Up", 12, FontWeight.normal, Colors.black))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
