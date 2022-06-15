

import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page10.dart';
import 'package:get/get.dart';

class page9 extends StatefulWidget {
  @override
  State<page9> createState() => _page9State();
}

class _page9State extends State<page9> {
  @override
  Widget build( context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                          onPressed: () {
                            Get.to(page10());
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 20,
                          )),
                    ),
                    Helper()
                        .customText("Foods", 16, FontWeight.bold, Colors.black),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {
                            _showMyDialog(context);
                          },
                          icon: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.grey,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Helper().customCard("123", "Total words"),
                    Helper().customCard("60", "Wrong Words"),
                    Helper().customCard("64", "Correct Words"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Helper().customText(
                        "Add Word", 14, FontWeight.bold, Colors.black),
                    Helper().customText(
                        "Start Quiz", 14, FontWeight.bold, Colors.black),
                  ],
                ),
              ),
              Helper().customCliper2(
                  "Chinese", "[yakitori]", "Yakitori", Colors.blue),
              SizedBox(
                height: 15,
              ),
              Helper().customCliper2(
                  "Chinese", "[yakitku]", "Grilled meat", Colors.orange),
              SizedBox(
                height: 15,
              ),
              Helper().customCliper2(
                  "Chinese", "[Sashimi]", "Sashimi", Colors.green)
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
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
            child:Helper().customText("Add a word", 12, FontWeight.bold, Colors.black),
            onPressed: () {
              _showMyDialog1(context);
            },
          ),
      
      Divider(thickness: 2,),
            TextButton(
                child:Helper().customText("Add a group", 12, FontWeight.bold, Colors.black),
                onPressed: () {
                  _showMyDialog2(context);
                },
              ),

            ],
          ),
        ),
      );
    },
  );
}


Future<void> _showMyDialog1(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Helper().customText("Add New Group", 16, FontWeight.bold, Colors.black),
                    Icon(Icons.close),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    children: [
                      Helper().customText("Group Name", 14, FontWeight.normal, Colors.black),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Helper().customTextField(Icons.ac_unit, Colors.white, 12, "Football Objects", 10,20, Colors.grey, 2, 12, Colors.black, 2, 12),
                SizedBox(height: 10,),
                 Helper().customButton(page9(), "Create Group", Colors.white, Colors.black, 12),
      
              ],
            ),
          ),
        ),
      );
    },
  );
}



Future<void> _showMyDialog2(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
            
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                  //    decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(12),
                  // ),
                    color: Colors.grey[200],
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Helper().customText("Tap to add a descriptive image", 12, FontWeight.normal, Colors.black),
                        SizedBox(height:10),
                      ],
                    )),
                ) ,
              ),
                SizedBox(height:15),
                Helper().customTextField(Icons.ac_unit, Colors.white, 12, "Tap to add a Word", 10,20, Colors.grey, 2, 12, Colors.black, 2, 12),
                SizedBox(height:15),
                 Helper().customTextField(Icons.volume_up, Colors.black, 20, "Add examples", 10,20, Colors.grey, 2, 12, Colors.black, 2, 12),
                
              ],
            ),
          ),
        ),
      );
    },
  );
}

}
