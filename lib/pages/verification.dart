import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:travenor/common/back_arrow_button.dart';
import 'package:travenor/common/button.dart';
import 'package:travenor/common/color.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final TextEditingController _otpController = TextEditingController();
  int _secondRemaining = 60;
  Timer? _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _secondRemaining = 60;
    _canResend = false;
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondRemaining > 0) {
        setState(() {
          _secondRemaining--;
        });
      } else {
        timer.cancel();
        setState(() {
          _canResend = true;
        });
      }
    });
  }

  void resendOtp() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('OTP Resent Successfully!')));
    startTimer(); // Resend ke baad timer ko dubara start karo
  }

  @override
  void dispose() {
    _timer?.cancel(); // Memory leak se bachne ke liye timer ko dispose karo
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const BackArrowButton(),
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.only(left: 58, right: 58),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "OTP Verification",
                  style: TextStyle(
                    color: textblack,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Please check your email ",
                    style: TextStyle(color: subtextgrey, fontSize: 18),
                    children: [
                      TextSpan(
                        text: "rishabh123@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: subtextgrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: " to see the verification code"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "OTP Code",
              style: TextStyle(
                color: textblack,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Pinput(length: 6, controller: _otpController)],
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
