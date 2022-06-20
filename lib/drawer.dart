import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/page9.dart';

class Draweer extends StatefulWidget {
  const Draweer({Key? key}) : super(key: key);

  @override
  State<Draweer> createState() => _DraweerState();
}

class _DraweerState extends State<Draweer> {
  Helper helper = Helper();
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      // backgroundColor: Colors.brown,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xff212121),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 0, top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              helper.customText(
                                  "john", 20, FontWeight.normal, Colors.white),
                              helper.customText(
                                  "@john", 16, FontWeight.normal, Colors.grey),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 19,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    helper.customListTile("User Account",
                        "images/user account.jpeg", Icons.arrow_forward_ios),
                    helper.customListTile(
                        "Add New Language",
                        "images/add new language.jpeg",
                        Icons.arrow_forward_ios),
                    helper.customListTile(
                        "Quiz", "images/quiz.jpeg", Icons.arrow_forward_ios),
                    helper.customListTile("Favorite", "images/favourite.png",
                        Icons.arrow_forward_ios),
                    helper.customListTile("Subscription",
                        "images/subscription.jpeg", Icons.arrow_forward_ios),
                    helper.customListTile("Notifications",
                        "images/notifications.jpeg", Icons.arrow_forward_ios),
                    helper.customListTile("General Settings",
                        "images/settings.jpeg", Icons.arrow_forward_ios),
                    SizedBox(
                      height: 130,
                    ),
                    Container(
                      width: 180,
                      child: helper.customButton(
                          page9(), "Log out", Colors.white, Colors.black, 8),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
