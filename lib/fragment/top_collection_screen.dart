import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';

class TopCollection extends StatefulWidget {
  @override
  _TopCollectionState createState() => _TopCollectionState();
}

class _TopCollectionState extends State<TopCollection> {
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
          "Top Collection ",
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
            margin: EdgeInsets.symmetric(horizontal: Dimen.margin20,vertical: Dimen.margin12),
            child: new StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) =>
              new Container(
                padding: EdgeInsets.all(Dimen.margin5),
                decoration: CustomWidget.raduisboxdecoration(ConstantColor.whitesmoke, 6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      child: Container(
                        height: 130,
                        decoration: CustomWidget.imagedecoration("watch"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    Container(
                      child: Text("ILMB BUTTERFLY LOGO EARRINGS",style: CustomWidget.TextStyleRegular(Dimen.size12, Colors.black),textAlign: TextAlign.center,),
                      margin: EdgeInsets.only(top: Dimen.margin8),
                    ),
                    Container(
                      child: Text("\$30.00",style: CustomWidget.TextStyleMediumItalic(Dimen.size12, Colors.black),textAlign: TextAlign.center,),
                      margin: EdgeInsets.only(top: Dimen.margin8),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Dimen.margin8),
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            child: CustomWidget.sizedBox("unfav", 25, 25),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: Dimen.margin5),
                              height: 25,
                              decoration: CustomWidget.raduisboxdecoration(Colors.black, 4.0),
                              child: Center(
                                child: Text("ADD TO CART",style: CustomWidget.TextStyleBold(Dimen.size10,Colors.white),),
                              ),
                            ),
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
