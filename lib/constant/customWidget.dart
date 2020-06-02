import 'package:flutter/material.dart';
import 'package:ilmb/constant/ConstantColor.dart';
import 'package:ilmb/constant/dimension.dart';
import 'package:ilmb/constant/fonts.dart';


class CustomWidget{

 static  TextStyle TextStyleLightItalic(double size,Color color){
    return TextStyle(
        color: color,
        fontSize: size,
        fontFamily:
        Fonts.Roboto_LightItalic);
  }
 static  TextStyle TextStyleBold(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Roboto_Bold);
 }
 static  TextStyle TextStyleBlack(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Roboto_Black);
 }
 static  TextStyle TextStyleRegular(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Roboto_Regular);
 }
 static  TextStyle TextStyleMedium(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Roboto_Medium);
 }
 static  TextStyle TextStyleArailBoldMT(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Arial_BoldMT);
 }
 static  TextStyle TextStyleItalic(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Roboto_Italic);
 }
 static  TextStyle TextStyleMediumItalic(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Roboto_MediumItalic);
 }
 static  TextStyle TextStyleCircularStdBook(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.CircularStd_Book);
 }
 static  TextStyle TextStyleArial_BoldItalicMT(double size,Color color){
   return TextStyle(
       color: color,
       fontSize: size,
       fontFamily:
       Fonts.Arial_BoldItalicMT);
 }
  static InputDecoration inputDecoration(String hinttext,Color color){
    return new InputDecoration(
      counterText: "",
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      contentPadding: EdgeInsets.only(
          left: 15,
          bottom: 11,
          top: 11,
          right: 15),
      hintText: hinttext,
      hintStyle: TextStyleLightItalic(Dimen.size16,color),);
  }

  static BoxDecoration inputboxdecoration(Color color){
   return BoxDecoration(
     color: color,
     borderRadius: BorderRadius.all(
         Radius.circular(2.0)),
   );
  }
 static BoxDecoration inputgradientdecoration(Color color1,Color color2){
   return BoxDecoration(
     gradient: LinearGradient(
         colors: [color1,color2],
         begin: Alignment.centerLeft,
         end: Alignment.centerRight),
     borderRadius: BorderRadius.all(
         Radius.circular(2.0)),
   );
 }
 static BoxDecoration imagedecoration(String image ){
   return BoxDecoration(
       image: DecorationImage(
         fit: BoxFit.fill,
         image: AssetImage("images/"+image+".png"),
       ),
   );
 }

 static SizedBox sizedBox(String image,double width,double height){
   return SizedBox(
     child:Image.asset("images/"+image+".png"),
     width: width,
     height: height,
   );
 }

 static BoxDecoration colordecoration(Color color){
   return BoxDecoration(
     color: color
   );
 }
 static BoxDecoration raduisboxdecoration(Color color,double radius){
   return BoxDecoration(
     color: color,
     borderRadius: BorderRadius.all(
         Radius.circular(radius)),
   );
 }

}

