import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/customWidget.dart';
import 'package:ilmb/fragment/mycart_screen.dart';
import 'package:ilmb/fragment/homescreen.dart';
import 'package:ilmb/fragment/myaccount.dart';
import 'package:ilmb/fragment/searchscreen.dart';


class MyBottomNavigation extends StatefulWidget {
  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _currentindex=0;
  CallPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomeScreen();
        break;
      case 1:
        return SearchScreen();
        break;
      case 2:
        return MyCartScreen();
        break;
      case 3:
        return MyAccount();
        break;
      default:
        return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        body:SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                CallPage(_currentindex)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ConstantColor.darkslategray,
          type: BottomNavigationBarType.fixed,


          onTap: (index){
            setState(() {
              _currentindex=index;
            });
          },
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
                activeIcon:CustomWidget.sizedBox("home", 45, 45),
                icon: CustomWidget.sizedBox("homeunative", 25, 25),
                title: Text("")
            ),
            BottomNavigationBarItem(
                activeIcon: CustomWidget.sizedBox("searchactive", 45, 45),
                icon: CustomWidget.sizedBox("search", 25, 25),
                title: Text("")

            ),
            BottomNavigationBarItem(
                activeIcon:CustomWidget.sizedBox("bagactive", 45, 45),
                icon: CustomWidget.sizedBox("bag", 25, 25),
                title: Text("")

            ),
            BottomNavigationBarItem(
                activeIcon:  CustomWidget.sizedBox("useractive", 45, 45),
                icon: CustomWidget.sizedBox("user", 25, 25),
                title: Text("")

            ),

          ],
        ),
      ),
    );
  }
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }
}
