import 'package:flutter/material.dart';
import 'package:travenor/common/button.dart';
import 'package:travenor/common/color.dart';
import 'package:travenor/pages/onboardscreen2.dart';

class OnboardScreen1 extends StatefulWidget {
  const OnboardScreen1({super.key});

  @override
  State<OnboardScreen1> createState() => _OnboardScreen1State();
}

class _OnboardScreen1State extends State<OnboardScreen1> {
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
                  image: AssetImage("asset/images/onboard1.png"),
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
                        "Life is short and the \n  world is wide",
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
                        width: 35,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: skyBlue,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(width: 13, height: 7, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: lightskyBlue,
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
            CommonButton(text: "Get Started", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Onboardscreen2()),);
            }),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
