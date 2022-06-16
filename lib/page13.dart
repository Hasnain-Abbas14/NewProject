import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page14.dart';

class page13 extends StatelessWidget {
 
    
  @override
  Widget build(BuildContext context) {
    var helper = Helper();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          
          child: Column(
        
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {
                            // _scaffoldKey.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 20,
                          ),
                        )),
                     Helper().customText("Quiz", 25, FontWeight.bold, Colors.black),

                        
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 20,
                            ))),
                  ],
                ),
              ),

                

                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Helper().customText("Chose the Quiz Type", 20, FontWeight.normal, Colors.black),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:60.0),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        height: 139,
                        width: 150,
                        child: helper.customCard("Word", "Quiz")),
                    ),
                  ),
                  SizedBox(height: 20,),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    height: 130,
                    width: 150,
                    child: Helper().customCard("Meaning", "Quiz")),

                    Padding(
                      padding: const EdgeInsets.only(top:140.0),
                      child: Container(
                        width: 320,
                        child: Helper().customButton(page14(), "Next",Colors.white, Colors.black, 12)),
                    ),
            ],
          ),
        ),
      ),
      
    );
  }
}