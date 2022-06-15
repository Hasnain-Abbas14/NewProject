import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page3.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: 20, left: 0, right: 0, child: Image.asset("images/man.png")),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 340,
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
                      Helper().customText("YOUR PERSONAL \n   VOCABULARY", 16,
                          FontWeight.bold, Colors.black),
                      Helper().customText(
                          "  A simple but very useful application  for  \nyou.A sami dictoinary will helps you learn any\n                       language you want!",
                          16,
                          FontWeight.normal,
                          Colors.black),
                      Helper().customButton(page3(), "Get Started",
                          Colors.white, Colors.black, 12),
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
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
