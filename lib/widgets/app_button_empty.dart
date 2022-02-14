import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

class AppButtonEmpty extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;

  const AppButtonEmpty(
      {Key? key,
      required this.onPressed,
      this.boxShape = BoxShape.rectangle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: 348,
        height: 54,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightPrimaryColor, width: 3.0),
          shape: boxShape,
          borderRadius: AppRadius.radius3,
        ),
        child: Center(
          child: Text(
            text,
            style: lightTheme.buttonEmpty,
          ),
        ),
      ),
    );
  }
}
