import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';


class ILMBWomanProduct extends StatefulWidget {
  @override
  _ILMBWomanProductState createState() => _ILMBWomanProductState();
}

class _ILMBWomanProductState extends State<ILMBWomanProduct> {
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
          "ILMB Woman",
          style: CustomWidget.TextStyleBold(Dimen.size20, Colors.white),
        ),
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
            decoration: CustomWidget.colordecoration(Colors.white),
            padding: EdgeInsets.symmetric(horizontal: Dimen.margin20,vertical: Dimen.margin12),
            child: new StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) =>
              new Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          child: Container(
                            height: 160,
                            decoration: CustomWidget.imagedecoration("watch"),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: ConstantColor.dimgray,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6.0),topRight: Radius.circular(6.0))
                              ),
                              child: Center(
                                child: Icon(Icons.add,color: Colors.white,size: 23,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      child: Text("BALANCE CARPIS",style: CustomWidget.TextStyleRegular(Dimen.size12, Colors.black),textAlign: TextAlign.center,),
                      margin: EdgeInsets.only(top: Dimen.margin8),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Dimen.margin8),
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$30.00",style: CustomWidget.TextStyleMediumItalic(Dimen.size12, ConstantColor.deeppink),textAlign: TextAlign.center,),
                          GestureDetector(
                            child: CustomWidget.sizedBox("unfav", 20, 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2,  3),
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
            )
        ),
      ),
    );
  }
}
