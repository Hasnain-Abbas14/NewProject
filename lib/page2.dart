import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page3.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F4F4),
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset("images/man 2.png")),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 368,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Helper().customText("YOUR PERSONAL \n   VOCABULARY", 22,
                            FontWeight.w700, Colors.black),
                        Helper().customText(
                            "  A simple but very useful application  for  \nyou.A sami dictoinary will helps you learn any\n                       language you want!",
                            15,
                            FontWeight.normal,
                            Colors.grey.shade500),
                        Container(
                          width: 150,
                          child: Helper().customButton(page3(), "Get Started",
                              Colors.white, Colors.black, 8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
