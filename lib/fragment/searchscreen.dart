import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';
import 'package:ilmb/fragment/ilmb_womanproduct.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: CustomWidget.colordecoration(Colors.white),
//        child: SingleChildScrollView(
//          child: IntrinsicHeight(
//              child: Container(
//                margin: EdgeInsets.symmetric(
//                  vertical: Dimen.margin25, horizontal: Dimen.margin15),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Container(
//                      width: MediaQuery.of(context).size.width,
//                      height: Dimen.height50,
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Expanded(
//                            child: Container(
//                              margin: EdgeInsets.only(right: Dimen.margin10),
//                              decoration: CustomWidget.inputboxdecoration(
//                                  ConstantColor.darkgray),
//                              child: TextField(
//                                maxLength: 35,
//                                keyboardType: TextInputType.emailAddress,
//                                decoration: CustomWidget.inputDecoration(
//                                    "Search by  products ,brand…", Colors.white),
//                                style: CustomWidget.TextStyleLightItalic(
//                                    Dimen.size16, Colors.white),
//                                cursorColor: Colors.white,
//                                onChanged: (value) {
//                                  setState(() {
////                              _emailid = value;
//                                  });
//                                },
//                              ),
//                            ),
//                          ),
//                          Container(
//                            decoration: CustomWidget.inputboxdecoration(
//                                ConstantColor.darkgray),
//                            width: 50,
//                            child: Center(
//                              child: CustomWidget.sizedBox("search", 20, 20),
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                    GestureDetector(
//                      onTap: (){
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (BuildContext
//                                context) =>
//                                    ILMBWomanProduct()));
//                      },
//                      child: Container(
//                          margin: EdgeInsets.only(top: Dimen.margin30),
//                          padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                          height: Dimen.height50,
//                          decoration: CustomWidget.inputboxdecoration(Colors.black),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Text("ILMB WOMAN",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                              Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                            ],
//                          )
//                      ),
//                    ),
//                    GestureDetector(
//                      child: Container(
//                          margin: EdgeInsets.only(top: Dimen.margin20),
//                          padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                          height: Dimen.height50,
//                          decoration: CustomWidget.inputboxdecoration(Colors.black),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Text("DIVAFIT",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                              Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                            ],
//                          )
//                      ),
//                    ),
//                    GestureDetector(
//                      child: Container(
//                          margin: EdgeInsets.only(top: Dimen.margin20),
//                          padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                          height: Dimen.height50,
//                          decoration: CustomWidget.inputboxdecoration(Colors.black),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Text("NEW ARRIVALS",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                              Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                            ],
//                          )
//                      ),
//                    ),
//                    GestureDetector(
//                      child: Container(
//                          margin: EdgeInsets.only(top: Dimen.margin20),
//                          padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
//                          height: Dimen.height50,
//                          decoration: CustomWidget.inputboxdecoration(Colors.black),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Text("FINAL SALE SCROLL",style: CustomWidget.TextStyleArial_BoldItalicMT(Dimen.size14, Colors.white),),
//                              Icon(Icons.chevron_right,color: Colors.white,size: 35,),
//                            ],
//                          )
//                      ),
//                    ),
//
//                  ],
//                ),
//              )),
//        ),
      ),


    );
  }
}
