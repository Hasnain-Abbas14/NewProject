import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page13.dart';
import 'package:flutter_application_1/page15.dart';
import 'package:get/get.dart';

class page14 extends StatefulWidget {
  const page14({Key? key}) : super(key: key);

  @override
  State<page14> createState() => _page14State();
}

class _page14State extends State<page14> {
  double value = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                fit: StackFit.loose,
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    child: Container(
                      height: 200,
                      color: Color(0xff212121),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: InkWell(
                                      onTap: () {
                                        _showMyDialog(context);
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                            height: 50,
                                            width: 50,
                                            child: Image.asset(
                                                'images/menu.jpeg')),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Helper().customText(
                                  "Quiz", 25, FontWeight.bold, Colors.white),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Helper().customText("6/10", 14,
                                      FontWeight.normal, Colors.grey)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Slider(
                                        activeColor: Colors.black,
                                        inactiveColor: Colors.grey[300],
                                        value: value,
                                        min: 0,
                                        max: 100,
                                        onChanged: (value) =>
                                            setState(() => this.value = value)),
                                  )
                                ],
                              ),
                              Helper().customText(
                                  "焼き鳥", 18, FontWeight.bold, Colors.black),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Helper().customText(
                                              "Listen\nthe Word",
                                              12,
                                              FontWeight.normal,
                                              Colors.black),
                                          Icon(Icons.volume_up),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Helper().customText(
                                              "Listen\na  Sentence",
                                              12,
                                              FontWeight.normal,
                                              Colors.black),
                                          Icon(Icons.volume_up),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 340,
                    left: 25,
                    right: 25,
                    child: Helper().customContainer(Colors.deepOrangeAccent,
                        Colors.deepOrangeAccent, "Yakitori"),
                  ),
                  Positioned(
                    top: 425,
                    left: 25,
                    right: 25,
                    child: Helper()
                        .customContainer(Colors.black, Colors.black, "Grilled"),
                  ),
                  Positioned(
                    top: 510,
                    left: 25,
                    right: 25,
                    child: Helper()
                        .customContainer(Colors.green, Colors.green, "Sashmi"),
                  ),
                  Positioned(
                    top: 590,
                    left: 22,
                    right: 22,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Helper().customContainer(
                          Colors.white54, Colors.grey, "Bycicle"),
                    ),
                  ),
                  // Positioned(
                  //     top: 690,
                  //     left: 25,
                  //     right: 25,
                  //     child: Helper().customButton(
                  //         Page15(), "Next", Colors.white, Colors.black, 12))
                ],
              ),
              SizedBox(
                height: 490,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 0),
                    child: Container(
                      width: 330,
                      child: Helper().customButton(
                          Page15(), "Next", Colors.white, Colors.black, 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            content: Builder(
              builder: (context) {
                return Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.to(Page15());

                                // MaterialPageRoute(builder: (context) => Page15(),);

                                color:
                                Colors.grey;
                              },
                              icon: Icon(Icons.close)),
                        ],
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                              // top:0,
                              // left: 0,
                              // right: 0,
                              child: Helper()
                                  .customImage("images/Cricle.png", 160, 160)),
                          Positioned(
                              top: 50,
                              left: 0,
                              right: 0,
                              child: Helper()
                                  .customImage("images/Avatar.png", 100, 100)),
                          Positioned(
                              top: 30,
                              left: 0,
                              right: 0,
                              child: Helper()
                                  .customImage("images/Crown.png", 50, 50)),
                          Positioned(
                            top: 170,
                            left: 70,
                            right: 0,
                            child: Helper().customText(
                                "Win", 16, FontWeight.bold, Colors.black),
                          ),
                          Positioned(
                            top: 210,
                            left: 50,
                            right: 0,
                            child: Helper().customText(
                                "12,000 pt", 14, FontWeight.bold, Colors.black),
                          ),
                          Positioned(
                            top: 240,
                            left: 0,
                            right: 0,
                            child: Helper().customText(
                                "Share your achivement or check leaderboard",
                                14,
                                FontWeight.normal,
                                Colors.grey.shade400),
                          ),
                          Positioned(
                            top: 280,
                            left: 0,
                            right: 0,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Card(
                                        color: Colors.grey,
                                        child: IconButton(
                                            onPressed: () {
                                              Page15();
                                            },
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                            ))),
                                    Helper().customText("Home", 12,
                                        FontWeight.normal, Colors.black),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Card(
                                        color: Colors.grey,
                                        child: IconButton(
                                            onPressed: () {
                                              Page15();
                                            },
                                            icon: Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ))),
                                    Helper().customText("Rating", 12,
                                        FontWeight.normal, Colors.black),
                                  ],
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Card(
                                          color: Colors.grey,
                                          child: IconButton(
                                              onPressed: () {
                                                Page15();
                                              },
                                              icon: Icon(
                                                Icons.share_sharp,
                                                color: Colors.white,
                                              ))),
                                      Helper().customText("Share", 12,
                                          FontWeight.normal, Colors.black),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ));
      },
    );
  }
}
