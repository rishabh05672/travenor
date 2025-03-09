import 'package:flutter/material.dart';
import 'package:travenor/pages/onboardScreen3.dart';

import '../common/button.dart';
import '../common/color.dart';

class Onboardscreen2 extends StatefulWidget {
  const Onboardscreen2({super.key});

  @override
  State<Onboardscreen2> createState() => _Onboardscreen2State();
}

class _Onboardscreen2State extends State<Onboardscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 444,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/onboard2.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "It's a big world out \n  there go explore",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Geometr",
                          fontWeight: FontWeight.bold,
                          color: textblack,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "At Friends tour and travels we customize reliable and trustworthy educational tours to destinations all over the world",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Geometr",
                      color: subtextgrey,
                    ),
                  ),
                  SizedBox(
                    height: 23.7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 13,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightskyBlue,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(width: 35, height: 7, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: skyBlue,
                      ),),
                      SizedBox(
                        width: 7,
                      ),
                      Container(width: 6, height: 7, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: lightskyBlue,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            CommonButton(text: "Next", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardScreen3()));
            }),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
