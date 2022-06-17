import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page12.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

class page11 extends StatefulWidget {
  const page11({Key? key}) : super(key: key);

  @override
  State<page11> createState() => _page11State();
}

class _page11State extends State<page11> {
  bool status3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            height: 40,
                            child: IconButton(
                                onPressed: () {
                                  Get.to(page12());
                                },
                                icon: Icon(Icons.menu)),
                          ),
                        )),
                    Expanded(
                        flex: 12,
                        child: Center(
                            child: Container(
                                child: Helper().customText("General Setting",
                                    20, FontWeight.bold, Colors.black)))),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Helper().customText(
                        "John Doe", 18, FontWeight.bold, Colors.black),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Helper().customText("JohnDoe@example.com", 14,
                        FontWeight.normal, Colors.black),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Helper().customText(
                            "\t\tProfile",
                            14,
                            FontWeight.normal,
                            Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Helper().customRow3("Edit Profile"),
              Helper().customRow3("Change Password"),

              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        // width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Helper().customText("\t\tNotifications", 14,
                              FontWeight.normal, Colors.black87),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        // width: double.infinity,
                        // color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Helper().customText("Puch Notifications", 14,
                              FontWeight.normal, Colors.black87),
                        ),
                      ),
                    ),
                    FlutterSwitch(
                      width: 65,
                      height: 30,
                      showOnOff: false,
                      activeColor: Colors.black,
                      activeTextColor: Colors.grey,
                      inactiveTextColor: Colors.black,
                      toggleColor: Colors.white,
                      value: status3,
                      onToggle: (val) {
                        setState(() {
                          status3 = val;
                        });
                      },
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        // width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Helper().customText("\t\tGeneral", 14,
                              FontWeight.normal, Colors.black87),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Helper().customRow3("Privacy Policy"),
              Helper().customRow3("Help & Support"),
              Helper().customRow3("About us"),
              Helper().customRow3("Contac Us"),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Row(
              //     mainAxisAlignment:MainAxisAlignment.spaceBetween,
              //     children: [
              //     Helper().customText("Eidt Profile", 12, FontWeight.normal, Colors.black),
              //     Icon(Icons.arrow_forward_ios,)
              //   ],),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
