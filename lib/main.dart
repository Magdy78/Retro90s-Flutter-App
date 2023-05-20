import 'package:finalproject2/Screens/list_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main(){

runApp(
  MaterialApp(
    home: ListFiles(),
    theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),


      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 10),
        backgroundColor: const Color(0xFF0A0E21),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.lime,
      ),


        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21)
          ,)
    ),


    ),


);
}

