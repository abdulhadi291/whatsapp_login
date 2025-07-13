import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
@override
  void initState() {
 Timer(Duration(seconds: 3), () {
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginView()),
  );


 });

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2022/09/18/18/40/apple-logo-7463795_640.png'),
          ),
        ),
      ),
    );
  }
}
