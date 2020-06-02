import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';


class ProductListScreen extends StatefulWidget {
  final String screenname;
  ProductListScreen({this.screenname});
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
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
          widget.screenname,
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
              decoration: CustomWidget.raduisboxdecoration(ConstantColor.whitesmoke, 6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
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
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children:<Widget>[
                        Container(
                          width:100,
                          height: 130,
                          decoration: CustomWidget.imagedecoration("divafit"),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: Dimen.margin15,left: Dimen.margin7,right: Dimen.margin7),
                          child: Text("DIVAFIT #13 JERSEY TANK",style: CustomWidget.TextStyleRegular(11, Colors.black),),
                        )
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Dimen.margin10,vertical: Dimen.margin10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children:<Widget>[
                            Stack(
                              children:<Widget>[
                                Text("\$35.00",style: CustomWidget.TextStyleItalic(Dimen.size12, Colors.black),),
                                Container(
                                  margin: EdgeInsets.only(top: Dimen.margin8),
                                  height: 1,
                                  width: 40,
                                  decoration: CustomWidget.colordecoration(Colors.black),
                                )
                              ]
                            ),
                            Container(
                              child: Text(" \$25.00",style: CustomWidget.TextStyleMediumItalic(Dimen.size12, ConstantColor.deeppink),),
                            )

                          ]
                        ),
                        GestureDetector(
                          child: CustomWidget.sizedBox("unfav", 20, 20),
                        )

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
