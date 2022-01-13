import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';

class AppButtonFull extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;

  AppButtonFull(
      {this.onPressed, this.boxShape = BoxShape.rectangle, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Container(
        width: 348,
        height: 54,
        decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: BorderRadius.circular(20),
            color: lightTheme.primaryColor),
        child: Center(
          child: Text(
            text,
            style: lightTheme.buttonFull,
          ),
        ),
      ),
    );
  }
}
