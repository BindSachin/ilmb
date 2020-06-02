import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';
import 'package:ilmb/fragment/change_password.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: CustomWidget.colordecoration(Colors.white),
          child: SingleChildScrollView(
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 245,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height:170,
                            decoration: CustomWidget.imagedecoration("blackbg"),
                            padding: EdgeInsets.only(left: Dimen.margin20,top: Dimen.margin25),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap:(){
                                      Navigator.of(context).pop();
                                    },
                                    child: Icon(Icons.chevron_left,size: 37,color: Colors.white,),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: Dimen.margin10),
                                    child: Text("Edit Profile",style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 150,
                              width: 150,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: AssetImage("images/watch.png"),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: Dimen.margin5,left: Dimen.margin5,right: Dimen.margin5),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          margin: EdgeInsets.only(left: 70),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ConstantColor.deeppink
                                          ),
                                          child: Center(
                                            child: CustomWidget.sizedBox("pen", 14, 14)
                                          )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )

                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: Dimen.height50,
                      margin: EdgeInsets.only(top: Dimen.margin40,left: Dimen.margin15,right: Dimen.margin15),
                      decoration: CustomWidget.inputboxdecoration(ConstantColor.darkgray),
                      child: TextField(
                        maxLength: 30,
                        decoration: CustomWidget.inputDecoration("Name",Colors.white),
                        style: CustomWidget.TextStyleLightItalic(Dimen.size16,Colors.white),
                        cursorColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
//                              _emailid = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      height: Dimen.height50,
                      margin: EdgeInsets.only(top: Dimen.margin20,left: Dimen.margin15,right: Dimen.margin15),
                      decoration: CustomWidget.inputboxdecoration(ConstantColor.darkgray),
                      child: TextField(
                        maxLength: 35,
                        keyboardType:
                        TextInputType.emailAddress,
                        decoration: CustomWidget.inputDecoration("Email",Colors.white),
                        style: CustomWidget.TextStyleLightItalic(Dimen.size16,Colors.white),
                        cursorColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
//                              _emailid = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      height: Dimen.height50,
                      margin: EdgeInsets.only(top: Dimen.margin20,left: Dimen.margin15,right: Dimen.margin15),
                      decoration: CustomWidget.inputboxdecoration(ConstantColor.darkgray),
                      child: TextField(
                        maxLength: 14,
                        keyboardType:
                        TextInputType.number,
                        decoration: CustomWidget.inputDecoration("Mobile Number",Colors.white),
                        style: CustomWidget.TextStyleLightItalic(Dimen.size16,Colors.white),
                        cursorColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
//                              _emailid = value;
                          });
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext
                                context) =>
                                    ChangePassword()));
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
                          height: Dimen.height50,
                          margin: EdgeInsets.only(top: Dimen.margin20,left: Dimen.margin15,right: Dimen.margin15),
                          decoration: CustomWidget.inputboxdecoration(Colors.black),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Change Password",style: CustomWidget.TextStyleItalic(Dimen.size14, Colors.white),),
                              Icon(Icons.chevron_right,color: Colors.white,size: 35,),
                            ],
                          )
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                          margin: EdgeInsets.only(top: Dimen.margin20,bottom:Dimen.margin40,left: Dimen.margin15,right: Dimen.margin15),
                          padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
                          height: Dimen.height50,
                          decoration: CustomWidget.inputboxdecoration(Colors.black),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Change Delivery Address",style: CustomWidget.TextStyleItalic(Dimen.size14, Colors.white),),
                              Icon(Icons.chevron_right,color: Colors.white,size: 35,),
                            ],
                          )
                      ),
                    ),

                  ],
                ),
              )
          ),
        ),
      )
    );
  }
}
