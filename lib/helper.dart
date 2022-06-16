import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:get/get.dart';

class Helper {
  Widget customText(
      String text, double size, FontWeight fontWeight, Color textcolor, {double leftPadding = 0.0}) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: Text(
        text,
        style: TextStyle(
          color: textcolor,
          fontWeight: fontWeight,
          fontSize: size,
        ),
      ),
    );
  }

  Widget customTextField(
    IconData icon,
    Color iconcolor,
    double iconsize,
    String hinttext,
    double contentPadingVertical,
    double contentPadinghorizontal,
    Color focusBoarderColor,
    double focusBoarderwidth,
    double focusborderRadius,
    Color enableBoarderColor,
    double enableBoarderwidth,
    double enableBorderRadius,
  ) {
    return TextField(
      decoration: InputDecoration(
        
        suffixIcon: Icon(
          icon,
          color: iconcolor,
          size: iconsize,
        ),
        hintText: hinttext,
        contentPadding: EdgeInsets.symmetric(
            vertical: contentPadingVertical,
            horizontal: contentPadinghorizontal),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: focusBoarderColor, width: focusBoarderwidth),
          borderRadius: BorderRadius.all(Radius.circular(focusborderRadius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: enableBoarderColor, width: enableBoarderwidth),
          borderRadius: BorderRadius.all(Radius.circular(enableBorderRadius)),
        ),
      ),
    );
  }

  Widget customImage(
    String imagePath,
    double height,
    double width,
  ) {
    return Image.asset(
      imagePath,
      height: height,
      width: width,
    );
  }

  Widget customClipper(
    Color bordercolor,
    String textPercentage,
    String headingText,
    String descriptionText,
  ) {
    Helper helper = Helper();
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
          // width: 330,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white70,
            border: Border(
              left: BorderSide(width: 5.0, color: bordercolor),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28,
                          child: helper.customText(
                              textPercentage, 14, FontWeight.normal, Colors.black)),
                    ),
                  ],
                ),
              ),
             
               Expanded(
                
                flex:8,
                 child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      helper.customText(
                          headingText, 20, FontWeight.bold, Colors.black),
                      helper.customText(
                          descriptionText, 16, FontWeight.normal, Colors.grey.shade400)
                    ],
                  ),
               ),
              
              // SizedBox(width: 60),
              Expanded(
                flex :2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(child: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget customTextFieldPreIcon(
    IconData icon,
    Color iconcolor,
    double iconsize,
    String hinttext,
    double contentPadingVertical,
    double contentPadinghorizontal,
    Color focusBoarderColor,
    double focusBoarderwidth,
    double focusborderRadius,
    Color enableBoarderColor,
    double enableBoarderwidth,
    double enableBorderRadius,
  ) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: iconcolor,
          size: iconsize,
        ),
        hintText: hinttext,
        contentPadding: EdgeInsets.symmetric(
            vertical: contentPadingVertical,
            horizontal: contentPadinghorizontal),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: focusBoarderColor, width: focusBoarderwidth),
          borderRadius: BorderRadius.all(Radius.circular(focusborderRadius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: enableBoarderColor, width: enableBoarderwidth),
          borderRadius: BorderRadius.all(Radius.circular(enableBorderRadius)),
        ),
      ),
    );
  }

  Widget customButton(Widget pageName, String buttonText, Color textColor,
      Color buttonColor, double buttonRadius) {
    return MaterialButton(
      onPressed: () {
        Get.to(pageName);
      },
      minWidth: 250,
      height: 50,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius)),
      color: buttonColor,
      child: Helper().customText(
        buttonText,
        17,
        FontWeight.bold,
        textColor,
      ),
    );
  }

  Widget customListTile(
    String text,
    IconData leaadingIcon,
    IconData trailingIcon,
  ) {
    return ListTile(
      title: Text(text,style: TextStyle(

        fontSize: 18,
      ),),
      // isThreeLine: true,
      // subtitle: Text('Secondary text\nTertiary text'),
      leading: Icon(leaadingIcon),
      trailing: Icon(trailingIcon),
    );
  }

  Widget customFlagRow(
    String firstFlagPath,
    String firstFlagText,
    String SecondFlagPath,
    String secondFlagText,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Helper().customImage(firstFlagPath, 150, 150),
                Helper().customText(
                    firstFlagText, 15, FontWeight.normal, Colors.black),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Helper().customImage(SecondFlagPath, 150, 150),
                Helper().customText(
                    secondFlagText, 15, FontWeight.normal, Colors.black),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget customCard(
    String text1,
    String text2,
  ) {
    return Container(
      width: 130,
      height: 80,

      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Helper().customText(text1, 12, FontWeight.normal, Colors.black),
              SizedBox(
                height: 5,
              ),
              Helper().customText(text2, 12, FontWeight.normal, Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCliper2(
      String text1, String text2, String text3, Color bordercolor) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,left: 25,right: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: 
           Container(
              //  width: 330,
              // height: 70,
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border(
                  left: BorderSide(width: 5.0, color: bordercolor),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10.0,right:20,left: 20),
                    child: Column(
                      children: [
                        Helper()
                            .customText(text1, 14, FontWeight.bold, Colors.black),
                        SizedBox(
                          height: 8,
                        ),
                        Helper()
                            .customText(text2, 12, FontWeight.normal, Colors.black),
                        SizedBox(
                          height: 8,
                        ),
                        Helper()
                            .customText(text3, 14, FontWeight.bold, Colors.black),
                        SizedBox(
                          height: 8,
                        ),
                        Icon(Icons.volume_up),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () {},
                            color: Colors.white,
                            child: Helper().customText(
                              "Review",
                              16,
                              FontWeight.bold,
                              Colors.black,
                            )),
                      ],
                    ),
                  ),
                ],
              )),
        
      ),
    );
  }

  Widget customRow(){
    return 
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(12),
            // ),
            height: 60,
            width: 250,
            color: Colors.grey[350],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Helper().customText("chinese", 12, FontWeight.normal, Colors.black),
                  Icon(Icons.volume_up),
                ],
              ),
            ),
              
          ),
  
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Icon(Icons.arrow_downward,size: 15,color: Colors.black,),
        ),

        ],
      ),
    );
  }
    Widget customRow2(){
      return   Padding(
               padding: const EdgeInsets.only(left:15,right:15),
               child: Row(
                 children: [
                   Helper().customText("John Doe", 14, FontWeight.bold, Colors.black),
                 ],
               ),
             );
    }

    Widget customRow3(String text){
      return  Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                Helper().customText(text, 16, FontWeight.normal, Colors.black),
                Icon(Icons.arrow_forward_ios,)
              ],),
            );
    }

    Widget customContainer(Color borderColor,Color radioButtonColor,String text){

       return Container(
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: borderColor,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Radio(
                                      value: 1,
                                      activeColor: radioButtonColor,
                                      groupValue: 1,
                                      onChanged: (value) {})
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Helper().customText(text, 16,
                                      FontWeight.normal, Colors.black),
                                ],
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Expanded(
                                child: Column(
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
    }

    Widget customContainer1(String text,String text2){

         return  Padding(
                 padding: const EdgeInsets.only(top:15.0,left: 25,right: 25),
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue,),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,left: 25,right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Helper().customText(text, 20, FontWeight.normal, Colors.grey),
                            Radio(
                                      value: 1,
                                      activeColor: Colors.blue,
                                      groupValue: 1,
                                      onChanged: (value) {})
                   

                          ],
                        ),
                      ),
                       

                       Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Row(
                           children: [
                             Helper().customText(text2, 16, FontWeight.bold, Colors.black),
                             SizedBox(height: 10,),
                              
                           ],
                         ),
                       ),

                       
                      
                            
                       Padding(
                         padding: const EdgeInsets.only(left:15.0),
                         child: Row(
                           children: [
                            Icon(Icons.check),
                             Helper().customText("Unlimited words", 15, FontWeight.normal, Colors.black),
                             SizedBox(height: 10,),
                              
                           ],
                         ),
                       ),      
                          
                      Padding(
                         padding: const EdgeInsets.only(left:15.0),
                         child: Row(
                           children: [
                            Icon(Icons.check),
                             Helper().customText("Unlimited language", 15, FontWeight.normal, Colors.black),
                             SizedBox(height: 10,),
                              
                           ],
                         ),
                       ),

                         Padding(
                         padding: const EdgeInsets.only(left:15.0),
                         child: Row(
                           children: [
                            Icon(Icons.check),
                             Helper().customText("Unlimited Sentences", 15, FontWeight.normal, Colors.black),
                             SizedBox(height: 10,),
                              
                           ],
                         ),
                       ),
                         Padding(
                         padding: const EdgeInsets.only(left:15.0,bottom: 15),
                         child: Row(
                           children: [
                            Icon(Icons.check),
                             Helper().customText("Listen to every word and sentence", 15, FontWeight.normal, Colors.black),
                             SizedBox(height: 10,),
                              
                           ],
                         ),
                       ),
                      
                    ],
                  ),
                 ),
               );
    }

  
}


