import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool _ispassHidden=false;
  bool _iscnfpassHidden=false;
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
                              child: Text("SIGN UP", style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),),
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
                          height: Dimen.height50,
                          margin: EdgeInsets.only(top: Dimen.margin40),
                          decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
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
                          margin: EdgeInsets.only(top: Dimen.margin20),
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
                        Container(
                          height: Dimen.height50,
                          margin: EdgeInsets.only(top: Dimen.margin20),
                          decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
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
                        Container(
                          height: Dimen.height50,
                          margin: EdgeInsets.only(top: Dimen.margin20),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 60),
                                height: Dimen.height50,
                                decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
                                child: TextField(
                                  maxLength: 15,
                                  obscureText: _ispassHidden,
                                  decoration: CustomWidget.inputDecoration("Password",Colors.white),
                                  style: CustomWidget.TextStyleLightItalic(Dimen.size16,Colors.white),
                                  cursorColor: Colors.white,
                                  onChanged: (value) {
                                    setState(() {
//                              _emailid = value;
                                    });
                                  },
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 50,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 35,
                                          width: 1,
                                          decoration: CustomWidget.colordecoration(Colors.white),
                                        ),
                                      ),
                                      Center(
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _ispassHidden = !_ispassHidden;
                                              });
                                            },
                                            child: _ispassHidden
                                                ? Icon(
                                              Icons
                                                  .visibility_off,
                                              size: 25,
                                              color: Colors.white,
                                            )
                                                : Icon(
                                              Icons.visibility,
                                              size: 25,
                                              color: Colors.white,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                        Container(
                          height: Dimen.height50,
                          margin: EdgeInsets.only(top: Dimen.margin20),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 60),
                                height: Dimen.height50,
                                decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
                                child: TextField(
                                  maxLength: 15,
                                  obscureText: _iscnfpassHidden,
                                  decoration: CustomWidget.inputDecoration("Confirm Password",Colors.white),
                                  style: CustomWidget.TextStyleLightItalic(Dimen.size16,Colors.white),
                                  cursorColor: Colors.white,
                                  onChanged: (value) {
                                    setState(() {
//                              _emailid = value;
                                    });
                                  },
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 50,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 35,
                                          width: 1,
                                          decoration: CustomWidget.colordecoration(Colors.white),
                                        ),
                                      ),
                                      Center(
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _iscnfpassHidden = !_iscnfpassHidden;
                                              });
                                            },
                                            child: _iscnfpassHidden
                                                ? Icon(
                                              Icons
                                                  .visibility_off,
                                              size: 25,
                                              color: Colors.white,
                                            )
                                                : Icon(
                                              Icons.visibility,
                                              size: 25,
                                              color: Colors.white,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 60),
                              decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
                              child:Center(child: Text("SIGN UP",style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),))

                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: Dimen.margin10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Already have an account?",style:CustomWidget.TextStyleLightItalic(Dimen.size12,Colors.white),),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: Dimen.margin5),
                                  child: Text(" SIGN IN",style: CustomWidget.TextStyleBlack(Dimen.size12, ConstantColor.pink),),
                                ),

                              )
                            ],
                          ),
                        )




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
