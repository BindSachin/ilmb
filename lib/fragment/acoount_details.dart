import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';


class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {

  bool _isoldpassHidden=false;
  bool _ispassHidden=false;
  bool _iscnfpassHidden=false;
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
                          decoration: CustomWidget.inputDecoration("First Name*",Colors.white),
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
                          maxLength: 30,
                          decoration: CustomWidget.inputDecoration("Last Name*",Colors.white),
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
                          maxLength: 30,
                          decoration: CustomWidget.inputDecoration("Display Name",Colors.white),
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
                          decoration: CustomWidget.inputDecoration("Email*",Colors.white),
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
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 60),
                              height: Dimen.height50,
                              decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
                              child: TextField(
                                maxLength: 15,
                                obscureText: _isoldpassHidden,
                                decoration: CustomWidget.inputDecoration("Old Password",Colors.white),
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
                                              _isoldpassHidden = !_isoldpassHidden;
                                            });
                                          },
                                          child: _isoldpassHidden
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
                        margin: EdgeInsets.only(top: Dimen.margin20,left: Dimen.margin15,right: Dimen.margin15),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 60),
                              height: Dimen.height50,
                              decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
                              child: TextField(
                                maxLength: 15,
                                obscureText: _ispassHidden,
                                decoration: CustomWidget.inputDecoration("New Password",Colors.white),
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
                        margin: EdgeInsets.only(top: Dimen.margin20,left: Dimen.margin15,right: Dimen.margin15),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 60),
                              height: Dimen.height50,
                              decoration: CustomWidget.inputboxdecoration(ConstantColor.dimgray),
                              child: TextField(
                                maxLength: 15,
                                obscureText: _iscnfpassHidden,
                                decoration: CustomWidget.inputDecoration("Confirm New Password",Colors.white),
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
                            margin: EdgeInsets.only(top: 50,bottom:50,left: Dimen.margin15,right: Dimen.margin15),
                            decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
                            child:Center(child: Text("SAVE",style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),))

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
