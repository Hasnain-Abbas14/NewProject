import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page11.dart';
import 'package:get/get.dart';

class page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(page10());
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                        )),
                    Helper().customText("Foods groups review", 16,
                        FontWeight.bold, Colors.black),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {
                            _showMyDialog(context);
                          },
                          icon: Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                border: Border(
                                  left: BorderSide(
                                      width: 5.0, color: Colors.blue),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        height: 220,
                                        // color: Colors.amber,
                                        width: 300,
                                        child: Image.asset(
                                          'images/food image.png',
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Helper().customText("焼き鳥", 18,
                                            FontWeight.bold, Colors.black),
                                        SizedBox(
                                          width: 200,
                                        ),
                                        Icon(Icons.volume_up),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, bottom: 15),
                                    child: Helper().customText("[yakitori]", 12,
                                        FontWeight.normal, Colors.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Row(
                                      children: [
                                        Helper().customText("Yakitori", 18,
                                            FontWeight.normal, Colors.black),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15, top: 20),
                                    child: Row(
                                      children: [
                                        Helper().customText("Sentences", 16,
                                            FontWeight.normal, Colors.black),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Helper().customRow(),
                                  Helper().customRow(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15, top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          color: Colors.grey[200],
                                          child: Text(
                                            "Add More",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal),
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          onPressed: () {
                                            _showMyDialog(context);
                                          },
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.grey[350],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.share,
                                              color: Colors.black,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                border: Border(
                                  left: BorderSide(
                                      width: 5.0, color: Colors.orange),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        height: 220,
                                        // color: Colors.amber,
                                        width: 300,
                                        child: Image.asset(
                                          'images/food image.png',
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Helper().customText("Chinese", 16,
                                            FontWeight.bold, Colors.black),
                                        SizedBox(
                                          width: 200,
                                        ),
                                        Icon(Icons.volume_up),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, bottom: 15),
                                    child: Helper().customText("[yakitori]", 12,
                                        FontWeight.normal, Colors.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Row(
                                      children: [
                                        Helper().customText("Yakitori", 18,
                                            FontWeight.normal, Colors.black),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15, top: 20),
                                    child: Row(
                                      children: [
                                        Helper().customText("Sentences", 16,
                                            FontWeight.normal, Colors.black),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Helper().customRow(),
                                  Helper().customRow(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15, top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          color: Colors.grey[200],
                                          child: Text(
                                            "Add More",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal),
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          onPressed: () {
                                            _showMyDialog(context);
                                          },
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.grey[350],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.share,
                                              color: Colors.black,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.close),
                  ],
                ),
                TextButton(
                  child: Helper().customText(
                      "焼き鳥焼き鳥焼き鳥焼き鳥焼き鳥", 12, FontWeight.bold, Colors.black),
                  onPressed: () {
                    Get.to(page11());
                  },
                ),
                Divider(
                  thickness: 2,
                ),
                TextButton(
                  child: Helper().customText("Maishu ni to yakitori", 12,
                      FontWeight.bold, Colors.black),
                  onPressed: () {
                    Get.to(page11());
                  },
                ),
                Divider(
                  thickness: 2,
                ),
                TextButton(
                  child: Helper().customText(
                      "I eat with my friends every friday",
                      12,
                      FontWeight.bold,
                      Colors.black),
                  onPressed: () {
                    Get.to(page11());
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.volume_up),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
