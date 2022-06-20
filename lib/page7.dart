import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/helper.dart';

class page7 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Helper helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      key: _scaffoldKey,
      drawer: Draweer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: InkWell(
                          onTap: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
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
                            icon: Icon(
                              Icons.add,
                              size: 30,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Container(
                              height: 20,
                              width: 20,
                              child: Image.asset('images/search.jpeg')),
                        ),
                        hintText: "Search Group",
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 12),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 12),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      helper.customText("Practice English", 16, FontWeight.w600,
                          Colors.black),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 150,
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
                                helper.customText("\t\tCat", 16,
                                    FontWeight.bold, Colors.white),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 10,
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
                            top: 115,
                            left: 15,
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
                            top: 100,
                            right: 2,
                            child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                onPressed: () {},
                                color: Colors.white,
                                child: helper.customText(
                                  "View More",
                                  13,
                                  FontWeight.normal,
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
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Groups",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                child: helper.customClipper(
                    Colors.blue, "0%", "Home Words", "words reviewed 0/29"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                child: helper.customClipper(
                    Colors.orange, "24%", "Food Words", "words reviewed 12/29"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                child: helper.customClipper(
                    Colors.green, "0%", "Clothes Words", "words reviewed 0/29"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
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
