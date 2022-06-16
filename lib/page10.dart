import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page11.dart';
import 'package:get/get.dart';

class page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(
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
                      left: BorderSide(width: 5.0, color: Colors.blue),
                    ),
                  ),
                  child:Column(
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
          
                      Container(
                        // color: Colors.amber,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('images/food image.png')),
              
          
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          
                 Column(
                   children: [
                     Helper().customText("chinese", 16, FontWeight.bold, Colors.black),
                      Helper().customText("[yakitori]", 12, FontWeight.normal, Colors.black),
                   ],
                 ),
          
                 Icon(Icons.volume_up),
                     
                ],
          
                  ),
              ),
          
          
              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15),
                  child: Row(
                children: [
                  Helper().customText("Yakitori", 14, FontWeight.normal, Colors.black),
                ],
                  ),
              ),
          
          
               Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15,top: 20),
                  child: Row(
                children: [
                  Helper().customText("Sentences", 14, FontWeight.normal, Colors.black),
                ],
                  ),
              ),
               SizedBox(height: 20,),
             Helper().customRow(),
             Helper().customRow(),
             
          
          
                   Padding(
                 padding: const EdgeInsets.only(left:15.0,right: 15,top: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                       MaterialButton(
                        color: Colors.grey[350],
                        child: Text("Add More"),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        onPressed: (){
                        _showMyDialog(context);
                        },
                       ),
          
                    Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.grey[350],),
                        Icon(Icons.share,color: Colors.black,),
                      ],
                    )
                  ],
                 ),
                   ),
          
          
                 SizedBox(height: 20,),
                      
                    ],
                  ),
                 ),
                ),
              ),
              SizedBox(width: 20,),
               ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border(
                      left: BorderSide(width: 5.0, color: Colors.blue),
                    ),
                  ),
                  child:Column(
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
          
                      Container(
                        // color: Colors.amber,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('images/food image.png')),
              
          
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          
                 Column(
                   children: [
                     Helper().customText("chinese", 16, FontWeight.bold, Colors.black),
                      Helper().customText("[yakitori]", 12, FontWeight.normal, Colors.black),
                   ],
                 ),
          
                 Icon(Icons.volume_up),
                     
                ],
          
                  ),
              ),
          
          
              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15),
                  child: Row(
                children: [
                  Helper().customText("Yakitori", 14, FontWeight.normal, Colors.black),
                ],
                  ),
              ),
          
          
               Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15,top: 20),
                  child: Row(
                children: [
                  Helper().customText("Sentences", 14, FontWeight.normal, Colors.black),
                ],
                  ),
              ),
               SizedBox(height: 20,),
             Helper().customRow(),
             Helper().customRow(),
             
          
          
                   Padding(
                 padding: const EdgeInsets.only(left:15.0,right: 15,top: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                       MaterialButton(
                        color: Colors.grey[350],
                        child: Text("Add More"),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        onPressed: (){
                        _showMyDialog(context);
                        },
                       ),
          
                    Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.grey[350],),
                        Icon(Icons.share,color: Colors.black,),
                      ],
                    )
                  ],
                 ),
                   ),
          
          
                 SizedBox(height: 20,),
                      
                    ],
                  ),
                 ),
                ),
              ),
              ],
            ),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.close),
                ],
              ),

                 TextButton(
            child:Helper().customText("Chinese", 12, FontWeight.bold, Colors.black),
            onPressed: () {
               Get.to(page11());
            },
          ),
      
      Divider(thickness: 2,),
              TextButton(
            child:Helper().customText("Maishu ni to yakitori", 12, FontWeight.bold, Colors.black),
            onPressed: () {
                Get.to(page11());
            },
          ),
  
      Divider(thickness: 2,),
            TextButton(
                child:Helper().customText("I eat with my friends every friday", 12, FontWeight.bold, Colors.black),
                onPressed: () {
                 Get.to(page11());
                },
              ),

              
              Padding(
                padding: const EdgeInsets.only(top:15.0),
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