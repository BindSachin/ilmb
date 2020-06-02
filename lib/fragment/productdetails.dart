import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _sliderindex = 0;
  List sizelist=["XS","S","M","L"];
  int _productincreament=1;
  double _ratingvalue=3;
  String _noofrating="84";

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
    child: Container(
        decoration: CustomWidget.imagedecoration("men")),
  ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: CustomWidget.colordecoration(Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 500,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 500,
                        color: Colors.transparent,
                        child: Container(
                          decoration: CustomWidget.colordecoration(Colors.transparent),
                          child: Column(children: [
                            CarouselSlider(
                              items: imageSliders,
                              options: CarouselOptions(
                                  height: 450,
                                  initialPage: 0,
                                  enlargeCenterPage: false,
                                  aspectRatio: 1,
                                  viewportFraction: 1.0,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _sliderindex = index;
                                    });
                                  }),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imgList.map((url) {
                                int index = imgList.indexOf(url);
                                return Container(
                                  width: _sliderindex == index ? 10.0 : 8.0,
                                  height: _sliderindex == index ? 10.0 : 8.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: _sliderindex == index
                                            ? ConstantColor.hotpink
                                            : ConstantColor.darkgray,
                                        width: 1),
                                    shape: BoxShape.circle,
                                    color: _sliderindex == index
                                        ? ConstantColor.pink
                                        : ConstantColor.gainsboro,
                                  ),
                                );
                              }).toList(),
                            ),
                          ]),
                        ),
                      ),

                      Container(
                        height: 420,
                        margin: EdgeInsets.symmetric(horizontal: Dimen.margin15,vertical: Dimen.margin20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ConstantColor.gray
                                ),
                                child: Center(
                                  child: Icon(Icons.chevron_left,size: 22,color: Colors.white,),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 25,
                                    width: 25,
                                    margin: EdgeInsets.only(right: Dimen.margin7),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ConstantColor.gray
                                    ),
                                    child: Center(
                                      child: CustomWidget.sizedBox("filter", 12, 12),
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ConstantColor.gray
                                    ),
                                    child: Center(
                                      child: CustomWidget.sizedBox("bell", 12, 12),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("BALANCE CARPIS",style: CustomWidget.TextStyleBold(Dimen.size22,Colors.white),),
                                Container(
                                  margin: EdgeInsets.only(top: Dimen.margin8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text("\$40.00",style: CustomWidget.TextStyleBold(Dimen.size18,Colors.white),),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: CustomWidget.imagedecoration("favwhite")
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimen.margin15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("SELECT SIZE:",style: CustomWidget.TextStyleRegular(Dimen.size12,ConstantColor.darkslategray),),
                          Text("SIZE CHART",style: CustomWidget.TextStyleMedium(Dimen.size12,ConstantColor.deeppink),),

                        ],
                      ),
                      Container(
                        height: 35,
                        margin: EdgeInsets.only(top: Dimen.margin10),
                        child: sizeList(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin25),
                        child:Text("QUANTITY:",style: CustomWidget.TextStyleRegular(Dimen.size12,ConstantColor.darkslategray),),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap:(){
                                if(_productincreament<100){
                                  setState(() {
                                    _productincreament++;

                                  });
                                }
                      },
                              child: Container(
                                child: Container(
                                  height:25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color:ConstantColor.lavenderblush,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: ConstantColor.deeppink,width: 1)
                                  ),
                                  child: Icon(Icons.add,color: ConstantColor.deeppink,size: 22,),
                                ),
                                padding: EdgeInsets.only(top: Dimen.margin15,bottom: Dimen.margin15,right: Dimen.margin15),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 30,
                              decoration: BoxDecoration(
                                  color:ConstantColor.lavenderblush,
                                  border: Border.all(color: ConstantColor.deeppink,width: 1)
                              ),
                              child: Center(child: Text(_productincreament.toString(),style: CustomWidget.TextStyleCircularStdBook(Dimen.size16, Colors.black),),),
                            ),
                            GestureDetector(
                              onTap: (){
                                if(_productincreament>1){
                                  setState(() {
                                    _productincreament--;

                                  });
                                }
                              },
                              child: Container(
                                child: Container(
                                  height:25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color:ConstantColor.lavenderblush,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: ConstantColor.deeppink,width: 1)
                                  ),
                                  child: Icon(Icons.remove,color: ConstantColor.deeppink,size: 22,),
                                ),
                                padding: EdgeInsets.only(top: Dimen.margin15,bottom: Dimen.margin15,left: Dimen.margin15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin10),
                        child:Text("Details & Description:",style: CustomWidget.TextStyleRegular(Dimen.size12,ConstantColor.darkslategray),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin10),
                        child: Wrap(
                          children: <Widget>[
                            Text("We all need a little “Balance” in our lives. The ombre style colors gives life to these leggings.  Whether you want a little color in your life or just keeping it simple, you’re sure to reach for these for any workout.",style: CustomWidget.TextStyleRegular(Dimen.size14,Colors.black),),
                          ],
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin15),
                        child: Wrap(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  text:"Fabric: ",
                                  style: CustomWidget.TextStyleBold(Dimen.size14, ConstantColor.darkslategray),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "73% polyester 27% spandex",
                                        style: CustomWidget.TextStyleRegular(Dimen.size14, ConstantColor.darkslategray)
                                    )
                                  ]
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin5),
                        child: Wrap(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  text:"Available colors: ",
                                  style: CustomWidget.TextStyleBold(Dimen.size14, ConstantColor.darkslategray),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Red",
                                        style: CustomWidget.TextStyleRegular(Dimen.size14, ConstantColor.darkslategray)
                                    )
                                  ]
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin5),
                        child: Wrap(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  text:"Fit: ",
                                  style: CustomWidget.TextStyleBold(Dimen.size14, ConstantColor.darkslategray),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Fitted",
                                        style: CustomWidget.TextStyleRegular(Dimen.size14, ConstantColor.darkslategray)
                                    )
                                  ]
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin5),
                        child: Wrap(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  text:"Leg opening: ",
                                  style: CustomWidget.TextStyleBold(Dimen.size14, ConstantColor.darkslategray),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Tight",
                                        style: CustomWidget.TextStyleRegular(Dimen.size14, ConstantColor.darkslategray)
                                    )
                                  ]
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin25),
                        child:Text("RATING & REVIEWS:",style: CustomWidget.TextStyleRegular(Dimen.size12,ConstantColor.darkslategray),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Dimen.margin15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(_ratingvalue.toString(),style: CustomWidget.TextStyleBold(Dimen.size18,ConstantColor.darkslategray),),
                                Container(
                                  margin: EdgeInsets.only(left: Dimen.margin10),
                                  child: SmoothStarRating(
                                      allowHalfRating: true,
                                      onRated: (v) {
                                      },
                                      starCount: 5,
                                      rating: _ratingvalue,
                                      size: 25.0,
                                      isReadOnly:true,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star_half,
                                    defaultIconData: Icons.star_border,
                                      color: ConstantColor.gold,
                                      borderColor: ConstantColor.gold,
                                      spacing:0.0,
                                  ) ,
                                )
                              ],
                            ),
                            Text(_noofrating+" "+"Reviews",style: CustomWidget.TextStyleMedium(Dimen.size12,ConstantColor.blue),),

                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: ()async{
                          FocusScope.of(context)
                              .requestFocus(new FocusNode());
                          var equipneed = await showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) =>
                                RatingDialog(),
                          );                        },
                        child: Container(
                            margin: EdgeInsets.only(top: Dimen.margin25),
                            padding: EdgeInsets.symmetric(horizontal: Dimen.margin15),
                            height: Dimen.height50,
                            decoration: CustomWidget.inputboxdecoration(ConstantColor.darkgray),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("ADD YOUR REVIEWS",style: CustomWidget.TextStyleItalic(Dimen.size14, Colors.white),),
                                Icon(Icons.chevron_right,color: Colors.white,size: 35,),
                              ],
                            )
                        ),
                      ),
                      GestureDetector(
                        child:Container(
                          height: 50,
                          margin:EdgeInsets.symmetric(vertical: Dimen.margin40),
                          decoration: CustomWidget.inputboxdecoration(Colors.black),
                          child: Center(
                            child: Text("ADD TO CART",style: CustomWidget.TextStyleBold(Dimen.size18, Colors.white),),
                          ),
                        )
                      )




                    ],
                  ),
                )

              ],
            ),
          ),

        ),
      ),
    );
  }

 Widget sizeList() {
    return Container(
      child: ListView.builder(
        itemCount: sizelist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,index){
        return Container(
          height: 35,
          width: 35,
          margin: EdgeInsets.only(right: Dimen.margin8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ConstantColor.silver,width: 1)
          ),
          child: Center(
            child: Text(sizelist[index],style: CustomWidget.TextStyleRegular(Dimen.size14, Colors.black),),
          ),
        );
      }),
    );
  }
}


class RatingDialog extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => RatingDialogState();
}

class RatingDialogState extends State<RatingDialog> {
  double _ratingvalue=0.0;
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
      height: 510,
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
            child:Text("REVIEWS & RATINGS",style: CustomWidget.TextStyleRegular(Dimen.size20, Colors.black),)
          ),
          Container(
            margin: EdgeInsets.only(top: Dimen.margin25),
            child: SmoothStarRating(
              allowHalfRating: true,
              onRated: (v) {
                setState(() {
                  _ratingvalue=v;
                });
              },
              starCount: 5,
              rating: _ratingvalue,
              size: 40.0,
              isReadOnly:false,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              defaultIconData: Icons.star_border,
              color: Colors.black,
              borderColor: Colors.black,
              spacing:0.0,
            ) ,
          ),
          Container(
            height: Dimen.height50,
            margin: EdgeInsets.only(top: Dimen.margin30,left: Dimen.margin10,right: Dimen.margin10),
            decoration: CustomWidget.raduisboxdecoration(ConstantColor.darkgray,5.0),
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
            margin: EdgeInsets.only(top: Dimen.margin20,left: Dimen.margin10,right: Dimen.margin10),
            decoration: CustomWidget.raduisboxdecoration(ConstantColor.darkgray,5.0),
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
            height:110,
            margin: EdgeInsets.only(top: Dimen.margin20,left: Dimen.margin10,right: Dimen.margin10),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 110,
                  padding: EdgeInsets.only(right: Dimen.margin30),
                  decoration: CustomWidget.raduisboxdecoration(ConstantColor.darkgray,5.0),
                  child: TextField(
                    maxLines: 8,
                    decoration: CustomWidget.inputDecoration("Message",Colors.white),
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
                  alignment: Alignment.topRight,
                  child: Container(
                      padding: EdgeInsets.all(Dimen.margin5),
                      child: CustomWidget.sizedBox("pen", 16, 16)),
                )

              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
                height: 40,
                width:150,
                margin: EdgeInsets.symmetric(vertical:Dimen.margin30),
                decoration:CustomWidget.inputgradientdecoration(ConstantColor.hotpink,ConstantColor.pink),
                child:Center(child: Text("SUBMIT",style: CustomWidget.TextStyleBold(Dimen.size16, Colors.white),))

            ),
          ),


        ],
      ),
    );
  }
}