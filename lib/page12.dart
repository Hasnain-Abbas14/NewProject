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
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15.0,left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 20,
                          )),
                    ),
                    Helper().customText("Subscription", 25, FontWeight.bold, Colors.black),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {
                            // _showMyDialog(context);
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
              SizedBox(height: 20,),
              Helper().customText("Chose your plan", 16, FontWeight.normal, Colors.black),
               Helper().customContainer1("MONTHLY","10/month"),
                Helper().customContainer1("ANNUALY","100/year"),

             SizedBox(height: 50,),
        

         Container(
          width: 340,
          child: Helper().customButton(page13(), "Continue to checkout", Colors.white, Colors.black, 12)),
 SizedBox(height: 20,),

            ],
            
          ),
        ),
      ),
      
    );
  }
}