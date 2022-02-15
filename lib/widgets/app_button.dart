import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

class AppButton extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;
  final AppButtonStyle style;

  const AppButton(
      {Key? key,
      this.onPressed,
      this.boxShape = BoxShape.rectangle,
      required this.text,
      this.style = AppButtonStyle.filled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (style == AppButtonStyle.filled) {
      return TextButton(
        onPressed: () {},
        child: Container(
          width: 348,
          height: 54,
          decoration: BoxDecoration(
              shape: boxShape,
              borderRadius: BorderRadius.circular(AppDimens.m),
              color: AppLightTheme.primaryColor),
          child: Center(
            child: Text(
              text,
              style: AppLightTheme.buttonFull,
            ),
          ),
        ),
      );
    } else {
      return TextButton(
        onPressed: onPressed,
        child: Container(
          width: 348,
          height: 54,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightPrimaryColor, width: 3.0),
            shape: boxShape,
            borderRadius: BorderRadius.circular(AppDimens.m),
          ),
          child: Center(
            child: Text(
              text,
              style: AppLightTheme.buttonEmpty,
            ),
          ),
        ),
      );
    }
  }
}

enum AppButtonStyle { filled, outlined }
