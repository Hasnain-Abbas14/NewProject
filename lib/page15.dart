import 'package:flutter/material.dart';

class Page15 extends StatefulWidget {
  @override
  State<Page15> createState() => _Page15State();
}

class _Page15State extends State<Page15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Spacer(),
                  Text(
                    'Notifications',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ),
                              Positioned(
                                  top: -9,
                                  right: -9,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.green[200],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Image.asset(
                                      'images/pronunication.jpeg',
                                      height: 20,
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nicolas Bekker purchased',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Pronunciation',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        '10:12 PM',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 57,
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[200],
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ),
                              Positioned(
                                  top: -9,
                                  right: -9,
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.orange[200],
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child:
                                          Image.asset('images/comment.jpeg')))
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Creating Word for Easier \nand Faster',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'thank you so much!',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        '07:54 PM',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 57,
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[200],
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ),
                              Positioned(
                                  top: -9,
                                  right: -9,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.orange[200],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Icon(Icons.favorite),
                                  ))
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nicolas Bekker purchased',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Pronunciation',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        '10:12 PM',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 57,
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ),
                              Positioned(
                                  top: -9,
                                  right: -9,
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                        color: Colors.green[200],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Icon(Icons.add),
                                  ))
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nicolas Bekker purchased',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Pronunciation',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        '10:12 PM',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 57,
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
