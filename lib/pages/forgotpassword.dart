import 'package:flutter/material.dart';
import 'package:travenor/common/back_arrow_button.dart';
import 'package:travenor/common/button.dart';
import 'package:travenor/common/color.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();

  void _showEmailSentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.all(20),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.email_outlined, size: 50, color: Colors.orange),
              SizedBox(height: 10),
              Text(
                'Check your email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(
                'We have sent password recovery instructions to your email.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          actions: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('OK', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          BackArrowButton(),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 58, right: 58),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8,
            child: Column(
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: textblack,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Enter your email account to reset your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: subtextgrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Input field ke corners round karne ke liye
                ),
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Enter your email',
              ),
            ),
          ),
          SizedBox(height: 40),

          CommonButton(
            text: "Reset Password",
            onPressed: () {
              if (emailController.text.isNotEmpty) {
                _showEmailSentDialog(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please enter your email')),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
