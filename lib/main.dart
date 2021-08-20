import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';
import 'screen2.dart';
import 'screen1.dart';
import 'screen3.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   // systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.white,
    statusBarBrightness: Brightness.light// status bar color
  ));

  runApp(Decor());
}
 class Decor extends StatefulWidget {
   @override
   _DecorState createState() => _DecorState();
 }
 
 class _DecorState extends State<Decor> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         brightness: Brightness.light,
         primaryColor: Colors.white,
         scaffoldBackgroundColor: Colors.white,
       ),
       initialRoute: '/',
       routes: {
         '/' :(context) => Screen1(),
         '/second': (context) => Sreen2(),
         '/third': (context)=> Screen3(),
       },
     );
   }
 }



