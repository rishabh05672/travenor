import 'package:flutter/material.dart';
import 'package:travenor/common/color.dart';

class CommonButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white, // ✅ Default value
  });

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: SizedBox(

      width: MediaQuery.of(context).size.width,
        height: 56,
        child: ElevatedButton(

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(skyBlue),

        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: widget.onPressed, // ✅ Dynamic function
      child: Text(
        widget.text, // ✅ Dynamic text
        style: TextStyle(fontSize: 16, color: widget.textColor, fontWeight: FontWeight.bold),
      ),
    )
    )
    );
  }
}