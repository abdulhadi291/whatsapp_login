import 'package:flutter/material.dart';
import 'package:whatsapp_ui/login_view.dart';
import 'package:whatsapp_ui/post_view.dart';
import 'package:whatsapp_ui/splash_view.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}