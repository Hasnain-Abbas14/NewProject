import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page13.dart';

class page12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var helper = Helper();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: InkWell(
                          onTap: () {
                            // Get.to(page12());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                                height: 50,
                                width: 50,
                                child: Image.asset('images/menu.jpeg')),
                          ),
                        )),
                    Helper().customText(
                        "Subscription", 25, FontWeight.bold, Colors.black),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {
                            // _showMyDialog(context);
                          },
                          icon: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.grey,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Helper().customText(
                  "Choose your plan", 16, FontWeight.normal, Colors.grey),
              SizedBox(
                height: 10,
              ),
              Helper().customContainer1(
                  "MONTHLY", "\$10/month", Colors.blue, Colors.blue),
              SizedBox(
                height: 25,
              ),
              Helper().customContainer1(
                  "ANNUALY", "\$100/year", Colors.grey, Colors.grey),
              SizedBox(
                height: 60,
              ),
              Container(
                  width: 320,
                  child: Helper().customButton(page13(), "Continue to checkout",
                      Colors.white, Colors.black, 12)),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
