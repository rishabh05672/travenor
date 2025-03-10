import 'package:flutter/material.dart';
import 'package:travenor/common/button.dart';
import 'package:travenor/common/color.dart';
import 'package:travenor/pages/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/back_arrow.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Sign in now",
                    style: TextStyle(
                      color: textblack,
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Please sign in to continue our app",
                    style: TextStyle(
                      color: subtextgrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: IconButton(
                  icon: Icon(
                    hidePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: orange,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          CommonButton(
            text: "Sign In",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: subtextgrey,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: orange,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "connect or",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: subtextgrey,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "asset/images/facebook.png",
                  width: 44,
                  height: 44,
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "asset/images/instagram.png",
                  width: 44,
                  height: 44,
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "asset/images/twitter.png",
                  width: 44,
                  height: 44,
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
