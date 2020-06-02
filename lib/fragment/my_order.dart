import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.chevron_left,size: 35,color: Colors.white,),
        ),
        title: Text(
          "My Orders",
          style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),      body: SafeArea(
        child: Container(
          decoration: CustomWidget.colordecoration(Colors.white),
          padding: EdgeInsets.all(Dimen.margin15),
          child: Container(
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    color: ConstantColor.whitesmoke,
                    child: Container(
                      padding: EdgeInsets.all(Dimen.margin10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Order No. : 9898 - 4545 - 292293",
                                style: CustomWidget.TextStyleRegular(
                                    Dimen.size14, Colors.black),
                              ),
                              Text(
                                "View Details",
                                style: CustomWidget.TextStyleRegular(
                                    Dimen.size10, Colors.red),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: Dimen.margin12),
                            height: 1,
                            decoration: CustomWidget.colordecoration(ConstantColor.darkgray),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration:
                                      CustomWidget.imagedecoration("watch"),
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top:Dimen.margin5),
                                    child: Text(
                                      "QTY: 1",
                                      style: CustomWidget.TextStyleRegular(
                                          Dimen.size12, Colors.black),
                                    ),
                                  )
                                ],
                              ),

                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: Dimen.margin12),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Wrap(
                                          children: <Widget>[
                                            Text(
                                              "DISTRESSED LOGO TEE_Black_",
                                              style: CustomWidget.TextStyleMedium(
                                                  Dimen.size14, Colors.black),
                                            ),
                                            Text(
                                              "Medium",
                                              style: CustomWidget.TextStyleRegular(
                                                  Dimen.size14, Colors.black),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(vertical: Dimen.margin12),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              RichText(
                                                text: TextSpan(
                                                    text:"Size: ",
                                                    style: CustomWidget.TextStyleBold(Dimen.size14, ConstantColor.darkslategray),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: "Size: M",
                                                          style: CustomWidget.TextStyleRegular(Dimen.size14, ConstantColor.darkslategray)
                                                      )
                                                    ]
                                                ),
                                              ),

                                              Text(
                                                "\$15",
                                                style: CustomWidget.TextStyleMedium(
                                                    Dimen.size16, ConstantColor.deeppink),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height:25,
                                          margin: EdgeInsets.only(left: Dimen.margin5),
                                          padding: EdgeInsets.symmetric(vertical: Dimen.margin7),
                                          decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
                                          child: Center(
                                            child: Text(
                                              "Track Your Orders",
                                              style: CustomWidget.TextStyleMedium(
                                                  Dimen.size12, Colors.white),
                                            ) ,
                                          ),
                                        )

                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      )
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
//  applyCouponDialog(){
//    showDialog(
//        context: context,
//        builder: (BuildContext context) {
//          return Dialog(
//            shape: RoundedRectangleBorder(
//                borderRadius:
//                BorderRadius.circular(15.0)), //this right here
//            child:Container(
//              height: 275,
//              decoration: CustomWidget.colordecoration(Colors.white),
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  GestureDetector(
//                    onTap: (){
//                      Navigator.of(context).pop(null);
//
//                    },
//                    child: Align      (
//                      alignment: Alignment.topRight,
//                      child: Container(
//                        padding: EdgeInsets.all(Dimen.margin10),
//                        child: Icon(Icons.close,size: 22,color: ConstantColor.gray,),
//                      ),
//                    ),
//                  ),
//                  Container(
//                      child:Text("APPLY COUPON",style: CustomWidget.TextStyleRegular(Dimen.size20, Colors.black),)
//                  ),
//                  Container(
//                    height: Dimen.height50,
//                    margin: EdgeInsets.only(top: Dimen.margin30,left: Dimen.margin10,right: Dimen.margin10,bottom: Dimen.margin30),
//                    decoration: CustomWidget.raduisboxdecoration(ConstantColor.darkgray,5.0),
//                    child: TextField(
//                      maxLength: 30,
//                      decoration: CustomWidget.inputDecoration("Coupon Code",Colors.white),
//                      style: CustomWidget.TextStyleLightItalic(Dimen.size16,Colors.white),
//                      cursorColor: Colors.white,
//                      onChanged: (value) {
//                        setState(() {
////                              _emailid = value;
//                        });
//                      },
//                    ),
//                  ),
//
//
//                  GestureDetector(
//                    onTap: (){
//                      Navigator.of(context).pop("10");
//                    },
//                    child: Container(
//                        height: 40,
//                        width:150,
//                        margin: EdgeInsets.symmetric(vertical:Dimen.margin30),
//                        decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
//                        child:Center(child: Text("APPLY",style: CustomWidget.TextStyleBold(Dimen.size16, Colors.white),))
//
//                    ),
//                  ),
//
//
//                ],
//              ),
//            ),
//          );
//        });
//  }
  congratulationDialog(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(15.0)), //this right here
            child:Container(
              height: 275,
              decoration: CustomWidget.colordecoration(Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();

                    },
                    child: Align      (
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: EdgeInsets.all(Dimen.margin10),
                        child: Icon(Icons.close,size: 22,color: ConstantColor.gray,),
                      ),
                    ),
                  ),
                  Container(
                      child:Text("CONGRATULATIONS!!!",style: CustomWidget.TextStyleRegular(Dimen.size20, ConstantColor.deeppink),)
                  ),

                  Container(
                      height: 150,
                      width:150,
                      margin: EdgeInsets.symmetric(vertical:Dimen.margin30),
                      decoration:CustomWidget.imagedecoration("cong"),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("\$10%",style: CustomWidget.TextStyleBlack(30, ConstantColor.pink),),
                          Text("Off",style: CustomWidget.TextStyleMedium(Dimen.size22, ConstantColor.pink),)
                        ],
                      )

                  ),


                ],
              ),
            ),
          );
        });
  }


}
