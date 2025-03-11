import 'package:flutter/material.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
