import 'package:ecom_app_/models/shop.dart';
import 'package:ecom_app_/pages/cartpage.dart';
import 'package:ecom_app_/pages/homepage.dart';
import 'package:ecom_app_/pages/intropage.dart';
import 'package:ecom_app_/themes/lightmode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
        ChangeNotifierProvider(
          create: (context) => Shop(),
        child: const MyApp(),
        )

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        
       
        '/intropage':(context) => const IntroPage(),
        '/homepage':(context) => const HomePage(),
        '/cartpage':(context) => const CartPage(),
      },
    );


  }
}