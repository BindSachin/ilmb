import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: CustomWidget.imagedecoration("darkbg"),
            child: SingleChildScrollView(
                child: IntrinsicHeight(
                  child: Container(
                    margin: EdgeInsets.only(top: 60,left: Dimen.margin20,right: Dimen.margin20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 220,
                          height: 130,
                          decoration: CustomWidget.imagedecoration("applogo"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 65),
                              child: Text("FORGOT PASSWORD", style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),),
                            ),
                            Container(
                              height: 1,
                              width: 40,
                              margin: EdgeInsets.only(top: Dimen.margin5),
                              decoration: CustomWidget.colordecoration(Colors.white),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Dimen.margin40),
                          child: Center(
                            child: Text("Please enter your registered email for receiving a reset password link.",
                              style:CustomWidget.TextStyleRegular(Dimen.size16, Colors.white),textAlign: TextAlign.center,),
                          ),
                        ),
                        Container(
                          height: Dimen.height50,
                          margin: EdgeInsets.only(top: Dimen.margin30),
                          decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
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

                        GestureDetector(
                          child: Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 70),
                              decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
                              child:Center(child: Text("RESET",style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),))

                          ),
                        ),




                      ],

                    ),
                  ),
                )
            )
        ),
      ),
    );
  }
}
