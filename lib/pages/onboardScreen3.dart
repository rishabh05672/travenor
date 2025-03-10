import 'package:flutter/material.dart';
import 'package:travenor/pages/sign_in.dart';

import '../common/button.dart';
import '../common/color.dart';

class OnboardScreen3 extends StatefulWidget {
  const OnboardScreen3({super.key});

  @override
  State<OnboardScreen3> createState() => _OnboardScreen3State();
}

class _OnboardScreen3State extends State<OnboardScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 444,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/onboard3.png"),
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
                        "People don't take trips, \n  trips take people",
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
                      Container(width: 6, height: 7, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: lightskyBlue,
                      ),),
                      SizedBox(
                        width: 7,
                      ),
                      Container(width: 35, height: 7, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: skyBlue,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            CommonButton(text: "Next", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
            }),
            SizedBox(height: 50),
          ],
        ),

    );
  }
}
