import 'package:flutter/material.dart';

class Styles {
  
   static const TextStyle formLable = TextStyle(
    color: Color(0XFF83877E),
    fontSize: 14.0,
    fontFamily: 'Helvetica',
  );
  
   static const TextStyle inputText = TextStyle(
    color: Color(0XFF303840),
    fontSize: 14.0,
    fontFamily: 'Helvetica',
  );
   static const loginInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
    focusColor: Colors.red,
    filled: true,
    fillColor: Color(0x33ffffff),
    hoverColor: Colors.red,
    hintStyle: TextStyle(color: Color(0x88ffffff,),fontFamily: 'Helvetica',),
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFFB2B4B0)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFFB2B4B0)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFFB2B4B0)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
  
}
