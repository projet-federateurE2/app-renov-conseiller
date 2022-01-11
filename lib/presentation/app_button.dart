import 'package:flutter/material.dart';
import 'package:git/presentation/app_theme.dart';
import 'package:git/presentation/dimension.dart';

class AppButton extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;

  AppButton(
      {this.onPressed, this.boxShape = BoxShape.rectangle, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 54,
        decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: BorderRadius.circular(20),
            color: activeTheme.primaryColor),
        child: Center(
          child: Text(
              text,
              style: const TextStyle(
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                  fontSize: 20,
              ),
          ),
        ),
      ),
    );
  }
}
