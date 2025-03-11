import 'package:flutter/material.dart';
import 'package:travenor/pages/onboardScreen1.dart';
import 'package:travenor/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboard': (context) => const OnboardScreen1(),
      },
    );
  }
}
