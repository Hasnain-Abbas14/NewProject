import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page10.dart';
import 'package:get/get.dart';

class page9 extends StatefulWidget {
  @override
  State<page9> createState() => _page9State();
}

class _page9State extends State<page9> {
  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                          onPressed: () {
                            Get.to(page10());
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 20,
                          )),
                    ),
                    Helper()
                        .customText("Foods", 20, FontWeight.bold, Colors.black),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {
                            _showMyDialog(context);
                          },
                          icon: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.grey,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Helper().customCard("123", "Total words")),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(child: Helper().customCard("60", "Wrong Words")),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(child: Helper().customCard("64", "Correct Word")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, left: 25, right: 25, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Helper().customText(
                        "Add Word", 15, FontWeight.bold, Colors.black),
                    Helper().customText(
                        "Start Quiz", 15, FontWeight.bold, Colors.black),
                  ],
                ),
              ),
              Helper()
                  .customCliper2("焼き鳥", "[yakitori]", "Yakitori", Colors.blue),
              SizedBox(
                height: 15,
              ),
              Helper().customCliper2(
                  "焼き", "[yakitku]", "Grilled meat", Colors.orange),
              SizedBox(
                height: 15,
              ),
              Helper().customCliper2("焼", "[Sashimi]", "Sashimi", Colors.green)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextButton(
                  child: Helper().customText(
                      "Add a word", 12, FontWeight.bold, Colors.black),
                  onPressed: () {
                    _showMyDialog1(context);
                  },
                ),
                Divider(
                  thickness: 2,
                ),
                TextButton(
                  child: Helper().customText(
                      "Add a group", 12, FontWeight.bold, Colors.black),
                  onPressed: () {
                    _showMyDialog3(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showMyDialog1(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          content: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Helper().customText(
                          "Add New Group", 16, FontWeight.bold, Colors.black),
                      Icon(Icons.close),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Helper().customText(
                            "Group Name", 14, FontWeight.normal, Colors.black),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Helper().customTextField(
                      Icons.ac_unit,
                      Colors.white,
                      12,
                      "Football Objects",
                      10,
                      20,
                      Colors.grey,
                      2,
                      12,
                      Colors.black,
                      2,
                      12),
                  SizedBox(
                    height: 10,
                  ),
                  Helper().customButton(
                      page9(), "Create Group", Colors.white, Colors.black, 12),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showMyDialog3(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            content: Builder(
              builder: (context) {
                return Container(
                  height: 400,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.close))
                        ],
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                              color: Colors.grey[200],
                              height: 100,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Helper().customText(
                                      "Tap to add a descriptive image",
                                      12,
                                      FontWeight.normal,
                                      Colors.black),
                                  SizedBox(height: 10),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(height: 15),
                      Helper().customTextField(
                          Icons.ac_unit,
                          Colors.white,
                          12,
                          "Tap to add a Word",
                          10,
                          20,
                          Colors.grey,
                          2,
                          12,
                          Colors.black,
                          2,
                          12),
                      SizedBox(height: 15),
                      Helper().customTextField(
                          Icons.volume_up,
                          Colors.black,
                          20,
                          "Add examples",
                          10,
                          20,
                          Colors.grey,
                          2,
                          12,
                          Colors.black,
                          2,
                          12),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Helper().customButton(page10(), "Save Word",
                            Colors.white, Colors.black, 12),
                      ),
                    ],
                  ),
                );
              },
            ));
      },
    );
  }
}
