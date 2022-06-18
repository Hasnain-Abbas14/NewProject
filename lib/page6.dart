import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page7.dart';

class page6 extends StatelessWidget {
  const page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F4F4),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset('images/menu.jpeg')),
                            ),
                          )),
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications_none,
                                size: 30, color: Colors.grey),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Helper().customText(
                      "Choose a language", 25, FontWeight.bold, Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Helper().customTextField(
                          Icons.search,
                          Colors.black,
                          20,
                          "Search",
                          20,
                          20,
                          Colors.white,
                          2,
                          12,
                          Colors.white,
                          2,
                          12)),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15, top: 35, bottom: 0),
                    child: Helper().customFlagRow("images/j1.png", "Japanese",
                        "images/english.png", "English")),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 35),
                    child: Helper().customFlagRow("images/italin.png",
                        "Italian", "images/french.png", "French")),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 120,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Helper()
                                      .customImage('images/chines.png', 80, 80),
                                  Helper().customText('Chinese', 15,
                                      FontWeight.normal, Colors.black),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 35),
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 45,
                                ),
                                Helper().customText('More', 15,
                                    FontWeight.normal, Colors.black),
                                SizedBox(
                                  height: 45,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 360,
                  child: Helper().customButton(
                      page7(), "Continue", Colors.white, Colors.black, 12),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ));
  }
}
