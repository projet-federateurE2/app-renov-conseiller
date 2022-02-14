import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

class AppButtonFull extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;

  const AppButtonFull(
      {Key? key,
      this.onPressed,
      this.boxShape = BoxShape.rectangle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: 348,
        height: 54,
        decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: AppRadius.radius3,
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
