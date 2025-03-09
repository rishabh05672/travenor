import 'package:flutter/material.dart';

import '../common/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/onboard');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: skyBlue,
      body: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage("asset/images/splash_logo.png") ),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 133,
                height: 42,
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage("asset/images/travenor_text.png") ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 49,
          )
        ],
      ),

    );
  }
}
