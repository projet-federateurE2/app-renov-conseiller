import 'package:flutter/material.dart';
import 'package:git/presentation/app_theme.dart';

class AppButtonFull extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;

  const AppButtonFull(
      {Key? key, this.onPressed, this.boxShape = BoxShape.rectangle, required this.text}) : super(key: key);

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
