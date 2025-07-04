import "package:flutter/material.dart";
import 'package:get/get.dart';
import "VIEW/homepage.dart";
import 'CONTROLLER/bindings.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'ComicNeue-Bold'
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      home: questions(),





    );
  }

}