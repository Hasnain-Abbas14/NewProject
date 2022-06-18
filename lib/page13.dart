import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page14.dart';

class page13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var helper = Helper();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: InkWell(
                          onTap: () {
                            // Get.to(page12());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                                height: 50,
                                width: 50,
                                child: Image.asset('images/menu.jpeg')),
                          ),
                        )),
                    Helper()
                        .customText("Quiz", 25, FontWeight.w600, Colors.black),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 30,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Helper().customText(
                    "Choose the Quiz Type", 16, FontWeight.normal, Colors.grey),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  width: 150,
                  child: Helper().customCard("Word", "Quiz")),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  width: 150,
                  child: Column(
                    children: [
                      Helper().customCard("Meaning", "Quiz"),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Container(
                    width: 320,
                    child: Helper().customButton(
                        page14(), "Next", Colors.white, Colors.black, 12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
