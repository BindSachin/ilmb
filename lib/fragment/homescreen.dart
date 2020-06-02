import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/constant/dimension.dart';
import 'package:ilmb/fragment/productdetails.dart';
import 'package:ilmb/fragment/productlist_screen.dart';
import 'package:ilmb/fragment/top_collection_screen.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _sliderindex = 0;
  double count=0;
  int num =3;

  @override
  void initState() {
    count=num.toDouble();
    print(count);
    super.initState();
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
                child: SizedBox(
                    height: 150,
                    child: Image.asset("images/sliderimage.png",
                        fit: BoxFit.cover, width: 1500.0))),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOME",
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
              showAddOpeningDialog();

            },
            child: Container(
                margin: EdgeInsets.only(right: Dimen.margin25),
                child: CustomWidget.sizedBox("bell", 17, 20)),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: CustomWidget.colordecoration(Colors.white),
        child: SingleChildScrollView(
          child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: Dimen.height50,
                margin: EdgeInsets.symmetric(
                    vertical: Dimen.margin25, horizontal: Dimen.margin15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: Dimen.margin10),
                        decoration: CustomWidget.inputboxdecoration(
                            ConstantColor.darkgray),
                        child: TextField(
                          maxLength: 35,
                          keyboardType: TextInputType.emailAddress,
                          decoration: CustomWidget.inputDecoration(
                              "Search by  products ,brand…", Colors.white),
                          style: CustomWidget.TextStyleLightItalic(
                              Dimen.size16, Colors.white),
                          cursorColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
//                              _emailid = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      decoration: CustomWidget.inputboxdecoration(
                          ConstantColor.darkgray),
                      width: 50,
                      child: Center(
                        child: CustomWidget.sizedBox("search", 20, 20),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                color: Colors.transparent,
                child: Container(
                  decoration: CustomWidget.colordecoration(Colors.transparent),
                  child: Column(children: [
                    CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                          autoPlay: true,
                          height: 150,
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
                margin: EdgeInsets.symmetric(horizontal: Dimen.margin20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: Dimen.margin25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Special Offers",
                            style: CustomWidget.TextStyleArailBoldMT(
                                Dimen.size16, ConstantColor.darkslategray),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Dimen.margin5),
                            height: 1,
                            width: 70,
                            decoration: CustomWidget.colordecoration(
                                ConstantColor.darkslategray),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Dimen.margin15),
                      height: 120,
                    child: specialoffoerlist(),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Dimen.margin25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "New Arrivals",
                            style: CustomWidget.TextStyleArailBoldMT(
                                Dimen.size16, ConstantColor.darkslategray),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Dimen.margin5),
                            height: 1,
                            width: 70,
                            decoration: CustomWidget.colordecoration(
                                ConstantColor.darkslategray),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext
                                context) =>
                                    TopCollection()));

                      },
                      child: Container(
                        margin: EdgeInsets.only(top: Dimen.margin15),
                        height: 340,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 340,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 2),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(bottom: 1.5),
                                            width: (MediaQuery.of(context).size.width-40)/3,
                                            height: (MediaQuery.of(context).size.width-40)/3,
                                            decoration: CustomWidget.imagedecoration("watch"),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(top: 1.5),
                                              width: (MediaQuery.of(context).size.width-40)/3,
                                              decoration: CustomWidget.imagedecoration("men"),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 1),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            width: (MediaQuery.of(context).size.width-40)/3,
                                            height: (MediaQuery.of(context).size.width-40)/3,
                                            decoration: CustomWidget.imagedecoration("watch"),
                                          ),
                                          Container(
                                            width: (MediaQuery.of(context).size.width-40)/3,
                                            height: (MediaQuery.of(context).size.width-40)/3,
                                            decoration: CustomWidget.imagedecoration("watch"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 2),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(bottom: 1.5),
                                              width: (MediaQuery.of(context).size.width-40)/3,
                                              decoration: CustomWidget.imagedecoration("men"),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 1.5),
                                            width: (MediaQuery.of(context).size.width-40)/3,
                                            height: (MediaQuery.of(context).size.width-40)/3,
                                            decoration: CustomWidget.imagedecoration("watch"),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Center(
                              child:Container(
                                height: 150,
                                width: 150,
                                decoration: CustomWidget.colordecoration(Colors.white),
                                child: Center(
                                  child: Text("Latest Collection",style: CustomWidget.TextStyleArailBoldMT(24, Colors.black),textAlign: TextAlign.center,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Dimen.margin30),
                      height: count*210,
                      child:ListView.builder(
                          itemCount: num,
                          physics: const NeverScrollableScrollPhysics(),

                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context,index){
                            return Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: Dimen.margin25),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Spring Summer’20 Highlights",
                                          style: CustomWidget.TextStyleArailBoldMT(
                                              Dimen.size16, ConstantColor.darkslategray),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: Dimen.margin5),
                                          height: 1,
                                          width: 70,
                                          decoration: CustomWidget.colordecoration(
                                              ConstantColor.darkslategray),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: MediaQuery.of(context).size.width-40,
                                    margin: EdgeInsets.only(top: Dimen.margin15),
                                    child: productlistwidget(),
                                  )
                                ],
                              ),
                            );

                          }) ,
                    ),

                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  Widget specialoffoerlist(){
    return ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,index){
          return GestureDetector(
            onTap:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext
                      context) =>
                          ProductListScreen(screenname: "On Sale - 30% Off",)));

            },
            child:Container(
              width: 100,
              margin: EdgeInsets.only(right: Dimen.margin10),
              decoration: CustomWidget.colordecoration(Colors.black),
              padding: EdgeInsets.all(Dimen.margin5),
              child: Container(
                height: 110,
                decoration:BoxDecoration(
                    color:Colors.black,
                    border:Border.all(color:Colors.white,width:0.4)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("On Sale",style: CustomWidget.TextStyleArailBoldMT(20,Colors.white),),
                    Container(
                      margin: EdgeInsets.only(top: Dimen.margin10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("30%",style: CustomWidget.TextStyleArailBoldMT(22,Colors.white),),
                          Text("OFF",style: CustomWidget.TextStyleMedium(13,Colors.white),),

                        ],
                      ),
                    )

                  ],
                ),

              ),


            ),
          );

        });
  }

 Widget productlistwidget() {
    return ListView.builder(
      itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,index){
        return GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext
                    context) =>
                        ProductDetails()));
          },
          child: Container(
            margin: EdgeInsets.only(right: 10),
            height: 140,
            width: 114,
            decoration: CustomWidget.imagedecoration("crimson"),
          ),
        );

    });
  }
  showAddOpeningDialog(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(15.0)), //this right here
            child:Container(
              height: 430,
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
                      child:Text("Today’s Best Offer",style: CustomWidget.TextStyleRegular(Dimen.size20, Colors.black),)
                  ),
                  Container(
                      margin: EdgeInsets.only(top:Dimen.margin25,left: Dimen.margin10,right: Dimen.margin10 ),
                      height: 205,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 2.5),
                                  height:100,
                                  decoration: CustomWidget.imagedecoration("men"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2.5),
                                  height:100,
                                  decoration: CustomWidget.imagedecoration("men"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height:100,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height:90,
                                        decoration: CustomWidget.imagedecoration("men"),
                                      ),
                                      Text("BALANCE CARPIS",style: CustomWidget.TextStyleRegular(8, Colors.black),)
                                    ],
                                  )
                                ),
                                Container(
                                    height:52,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          height:42,
                                          decoration: CustomWidget.imagedecoration("watch"),
                                        ),
                                        Text("BALANCE CARPIS",style: CustomWidget.TextStyleRegular(8, Colors.black),)
                                      ],
                                    )
                                ),
                                Container(
                                    height:53,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          height:43,
                                          decoration: CustomWidget.imagedecoration("divafit"),
                                        ),
                                        Text("BALANCE CARPIS",style: CustomWidget.TextStyleRegular(8, Colors.black),)
                                      ],
                                    )
                                ),


                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 3),
                            height: 205,
                            decoration: CustomWidget.imagedecoration("men"),
                          ),
                        ),

                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.all(Dimen.margin10),
                    child: Wrap(
                      children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: "Become an ILMB subscriber receive ",
                          style: CustomWidget.TextStyleRegular(Dimen.size14, Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: "15% off ",
                              style: CustomWidget.TextStyleBold(Dimen.size14, ConstantColor.deeppink),

                            ),
                            TextSpan(
                              text: "code after your first purchase",
                                style: CustomWidget.TextStyleRegular(Dimen.size14, Colors.black),

                      )
                          ]
                        ),
                        textAlign: TextAlign.center,
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
                        margin: EdgeInsets.symmetric(vertical:Dimen.margin20),
                        decoration:CustomWidget.raduisboxdecoration(Colors.black,5.0),
                        child:Center(child: Text("SHOP NOW",style: CustomWidget.TextStyleBold(Dimen.size16, Colors.white),))

                    ),
                  ),


                ],
              ),
            ),
          );
        });
  }
}
