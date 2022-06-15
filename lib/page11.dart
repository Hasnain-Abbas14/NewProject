import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/page12.dart';
import 'package:get/get.dart';

class page11 extends StatelessWidget {
  const page11({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Row(
              
                 children: [
                   Expanded(
                    flex: 1,
                    child: IconButton(onPressed: (){
                      Get.to(page12());
                    }, icon:Icon(Icons.menu))),
                    Expanded(
                      flex: 9,
                      child: Center(child: Container(child: Helper().customText("General Setting", 16, FontWeight.bold, Colors.black)))),
                 ],
               ),
             ),


             Padding(
               padding: const EdgeInsets.only(left:15,right:15),
               child: Row(
                 children: [
                   Helper().customText("John Doe", 14, FontWeight.bold, Colors.black),
                 ],
               ),
             ),

               Padding(
               padding: const EdgeInsets.only(left:15,right:15),
               child: Row(
                 children: [
                   Helper().customText("JohnDoe@example.com", 14, FontWeight.normal, Colors.black),
                 ],
               ),
             ),

         
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Row(
             children: [
               Expanded(
                 child: Container(
                  height: 35,
                  width : MediaQuery.of(context).size.width,
                  color:Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Helper().customText("Profile", 12, FontWeight.normal, Colors.black,),
                  ),
                 ),
               ),
             ],
           ),
         ),



           Helper().customRow3("Edit Profile"),
            Helper().customRow3("Change Password"),

        Padding(
           padding: const EdgeInsets.all(15.0),
           child: Row(
             children: [
               Expanded(
                 child: Container(
                  height: 35,
                    width : MediaQuery.of(context).size.width,
                  // width: double.infinity,
                  color:Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Helper().customText("Notifications", 12, FontWeight.normal, Colors.black),
                  ),
                 ),
               ),
             ],
           ),
         ),
          
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Row(
             children: [
               Expanded(
                 child: Container(
                  height: 35,
                  width:MediaQuery.of(context).size.width,
                  // width: double.infinity,
                  // color:Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Helper().customText("Puch Notifications", 12, FontWeight.normal, Colors.black),
                  ),
                 ),
               ),
             ],
           ),
         ),

            Padding(
           padding: const EdgeInsets.all(15.0),
           child: Row(
             children: [
               Expanded(
                 child: Container(
                  height: 35,
                  width : MediaQuery.of(context).size.width,
                  // width: double.infinity,
                  color:Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Helper().customText("General", 12, FontWeight.normal, Colors.black),
                  ),
                 ),
               ),
             ],
           ),
         ),
       
        

         Helper().customRow3("Privacy Policy"),
         Helper().customRow3("Help & Support"),
         Helper().customRow3("About us"),
         Helper().customRow3("Contac Us"),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: Row(
            //     mainAxisAlignment:MainAxisAlignment.spaceBetween,
            //     children: [
            //     Helper().customText("Eidt Profile", 12, FontWeight.normal, Colors.black),
            //     Icon(Icons.arrow_forward_ios,)
            //   ],),
            // )
        
            ],
          ),
        ),
      ),
      
    );
  }
}