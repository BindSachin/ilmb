import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';

class MyCartScreen extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
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
            onTap: (){

            },
            child: Container(
                margin: EdgeInsets.only(right: Dimen.margin25),
                child: CustomWidget.sizedBox("bell", 17, 20)),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: CustomWidget.colordecoration(Colors.white),
          padding: EdgeInsets.all(Dimen.margin15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          color: ConstantColor.whitesmoke,
                          child: Container(
                            padding: EdgeInsets.all(Dimen.margin10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                            "ILMB BUTTERFLY LOGO EARRINGS",
                                            style: CustomWidget.TextStyleMedium(
                                                Dimen.size14, Colors.black),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: Dimen.margin10),
                                              child: Text(
                                            "Sterling Silver",
                                            style: CustomWidget.TextStyleRegular(
                                                Dimen.size12, Colors.black),
                                          )),
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap:(){

                                              },
                                              child: Container(
                                                child: Container(
                                                  height:20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                      color:Colors.black,
                                                      shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(Icons.add,color: Colors.white,size: 12,),
                                                ),
                                                padding: EdgeInsets.only(top: Dimen.margin10,bottom: Dimen.margin10,right: Dimen.margin10),
                                              ),
                                            ),
                                            Container(
                                              height: 20,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                  color:Colors.black,
                                              ),
                                              child: Center(child: Text("1",style: CustomWidget.TextStyleCircularStdBook(Dimen.size14,Colors.white),),),
                                            ),
                                            GestureDetector(
                                              onTap: (){

                                              },
                                              child: Container(
                                                child: Container(
                                                  height:20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                      color:Colors.black,
                                                      shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(Icons.remove,color: Colors.white,size: 12,),
                                                ),
                                                padding: EdgeInsets.only(top: Dimen.margin10,bottom: Dimen.margin10,left: Dimen.margin10),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () async{
                                          FocusScope.of(context)
                                              .requestFocus(new FocusNode());
                                          var value = await showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (BuildContext context) =>
                                                ApplyCouponDialog(),
                                          );

                                          print(value);
                                          if(value!=null)
                                            congratulationDialog();
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top: Dimen.margin5),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                decoration:
                                                CustomWidget.raduisboxdecoration(ConstantColor.deeppink,3.0),
                                                padding: EdgeInsets.symmetric(horizontal: Dimen.margin10,vertical: Dimen.margin7),
                                                child: Text(
                                                  "Remove From Cart",
                                                  style: CustomWidget.TextStyleMedium(
                                                      Dimen.size10, Colors.white),
                                                ) ,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  margin: EdgeInsets.only(left: Dimen.margin5),
                                                  padding: EdgeInsets.symmetric(vertical: Dimen.margin7),
                                                  decoration:CustomWidget.raduisboxdecoration(Colors.black,3.0),
                                                  child: Center(
                                                    child: Text(
                                                      "EDIT",
                                                      style: CustomWidget.TextStyleMedium(
                                                          Dimen.size10, Colors.white),
                                                    ) ,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: Dimen.margin15),
                height: 60,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: Dimen.margin7),
                        decoration: CustomWidget.raduisboxdecoration(
                            ConstantColor.whitesmoke, 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Grand Total:",
                              style: CustomWidget.TextStyleRegular(
                                  Dimen.size12, Colors.black),
                            ),
                            Text(
                              "\$75",
                              style: CustomWidget.TextStyleRegular(
                                  Dimen.size14, Colors.red),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: Dimen.margin7),
                        decoration: CustomWidget.raduisboxdecoration(
                            ConstantColor.deeppink, 5.0),
                        child: Center(
                          child: Text(
                            "PLACE ORDER",
                            style: CustomWidget.TextStyleRegular(
                                Dimen.size14, Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
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

class ApplyCouponDialog extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ApplyCouponDialogState();
}

class ApplyCouponDialogState extends State<ApplyCouponDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      height: 275,
      decoration: CustomWidget.colordecoration(Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop(null);

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
              child:Text("APPLY COUPON",style: CustomWidget.TextStyleRegular(Dimen.size20, Colors.black),)
          ),
          Container(
            height: Dimen.height50,
            margin: EdgeInsets.only(top: Dimen.margin30,left: Dimen.margin10,right: Dimen.margin10,bottom: Dimen.margin30),
            decoration: CustomWidget.raduisboxdecoration(ConstantColor.darkgray,5.0),
            child: TextField(
              maxLength: 30,
              decoration: CustomWidget.inputDecoration("Coupon Code",Colors.white),
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
              Navigator.of(context).pop("10");
            },
            child: Container(
                height: 40,
                width:150,
                margin: EdgeInsets.symmetric(vertical:Dimen.margin30),
                decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
                child:Center(child: Text("APPLY",style: CustomWidget.TextStyleBold(Dimen.size16, Colors.white),))

            ),
          ),


        ],
      ),
    );
  }
}