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
        child: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 150,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
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
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            helper.customText(
                                "john", 12, FontWeight.normal, Colors.white),
                            helper.customText(
                                "@john", 12, FontWeight.normal, Colors.grey),
                          ],
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            helper.customListTile(
                "User Account", Icons.person, Icons.arrow_forward_ios),
            helper.customListTile("Add New Language", Icons.note_add_rounded,
                Icons.arrow_forward_ios),
            helper.customListTile("Quiz", Icons.quiz, Icons.arrow_forward_ios),
            helper.customListTile(
                "Favorite", Icons.favorite, Icons.arrow_forward_ios),
            helper.customListTile(
                "Subscription", Icons.thumb_up, Icons.arrow_forward_ios),
            helper.customListTile(
                "Notifications", Icons.notifications, Icons.arrow_forward_ios),
            helper.customListTile(
                "General Settings", Icons.settings, Icons.arrow_forward_ios),
            SizedBox(
              height: 70,
            ),
            helper.customButton(
                page9(), "Log out", Colors.white, Colors.black, 12),
          ],
        ),
      ),
    ));
  }
}
