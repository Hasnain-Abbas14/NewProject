import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/helper.dart';

class page7 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Helper helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Draweer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 20,
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 20,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: helper.customTextField(
                        Icons.search,
                        Colors.black,
                        20,
                        "Search group",
                        10,
                        20,
                        Colors.white,
                        2,
                        12,
                        Colors.white,
                        2,
                        12)),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      helper.customText("Practice English", 16, FontWeight.bold,
                          Colors.black),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 2,
                              right: 2,
                              child: Image.asset(
                                'images/cat.png',
                                height: 50,
                                width: 50,
                              )),
                          Positioned(
                            child: Row(
                              children: [
                                helper.customText(
                                    "Cat", 16, FontWeight.bold, Colors.white),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 30,
                            child: Row(
                              children: [
                                helper.customText(
                                    "How to proniunce cat noun\n in English",
                                    12,
                                    FontWeight.normal,
                                    Colors.white),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Positioned(
                            top: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.volume_up,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 60,
                            right: 2,
                            child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                onPressed: () {},
                                color: Colors.white,
                                child: helper.customText(
                                  "View More",
                                  16,
                                  FontWeight.bold,
                                  Colors.black,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "Groups",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: helper.customClipper(
                    Colors.blue, "0%", "Home Words", "words reviewed 0/29"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: helper.customClipper(
                    Colors.orange, "24%", "Food Words", "words reviewed 12/29"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: helper.customClipper(
                    Colors.green, "0%", "Clothes Words", "words reviewed 0/29"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: helper.customClipper(Colors.orange, "24%",
                    "Travel Words", "words reviewed 12/29"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
