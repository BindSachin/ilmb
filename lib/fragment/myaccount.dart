import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';
import 'package:ilmb/fragment/acoount_details.dart';
import 'package:ilmb/fragment/edit_profile.dart';
import 'package:ilmb/fragment/my_order.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(right: Dimen.margin12),
                child: CustomWidget.sizedBox("filter", 20, 20)),
          ),
          GestureDetector(
            child: Container(
                margin: EdgeInsets.only(right: Dimen.margin25),
                child: CustomWidget.sizedBox("bell", 17, 20)),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: CustomWidget.colordecoration(Colors.white),
          child: SingleChildScrollView(
            child: IntrinsicHeight(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      vertical: Dimen.margin25, horizontal: Dimen.margin15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
//                      GestureDetector(
//                        onTap: (){
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (BuildContext
//                                  context) =>
//                                      EditProfile()));
//                        },
//                        child: Container(
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("EDIT PROFILE",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
//                      GestureDetector(
//                        child: Container(
//                            margin: EdgeInsets.only(top: Dimen.margin20),
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("PRE - ORDERS",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext
                                  context) =>
                                      MyOrder()));
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: Dimen.margin20),
                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
                            height: Dimen.height50,
                            decoration: CustomWidget.inputboxdecoration(Colors.black),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("MY ORDERS",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
                              ],
                            )
                        ),
                      ),
//                      GestureDetector(
//                        child: Container(
//                            margin: EdgeInsets.only(top: Dimen.margin20),
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("SUBSCRIPTIONS",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
//                      GestureDetector(
//                        onTap: (){
////                          Navigator.push(
////                              context,
////                              MaterialPageRoute(
////                                  builder: (BuildContext
////                                  context) =>
////                                      ILMBWomanProduct()));
//                        },
//                        child: Container(
//                            margin: EdgeInsets.only(top: Dimen.margin20),
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("LOVING ME REWARD",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
//                      GestureDetector(
//                        child: Container(
//                            margin: EdgeInsets.only(top: Dimen.margin20),
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("ACCOUNT FUNDS",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
//                      GestureDetector(
//                        child: Container(
//                            margin: EdgeInsets.only(top: Dimen.margin20),
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("ADDRESSES",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
//                      GestureDetector(
//                        child: Container(
//                            margin: EdgeInsets.only(top: Dimen.margin20),
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("PAYMENT METHOD",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
//                      GestureDetector(
//                        onTap: (){
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (BuildContext
//                                  context) =>
//                                     AccountDetails()));
//                        },
//                        child: Container(
//                            margin: EdgeInsets.only(top: Dimen.margin20),
//                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                            height: Dimen.height50,
//                            decoration: CustomWidget.inputboxdecoration(Colors.black),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("ACCOUNT DETAILS",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                              ],
//                            )
//                        ),
//                      ),
//                      GestureDetector(
//                        onTap: (){
////                          Navigator.push(
////                              context,
////                              MaterialPageRoute(
////                                  builder: (BuildContext
////                                  context) =>
////                                      MyBottomNavigation()));
//                        },
//                        child: Container(
//                            height: 50,
//                            margin: EdgeInsets.only(top: 60),
//                            decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
//                            child:Center(child: Text("LOGOUT",style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),))
//
//                        ),
//                      ),


                    ],
                  ),
                )),
          ),
        ),
      ),


    );
  }
}
