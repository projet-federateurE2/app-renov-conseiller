import 'package:flutter/material.dart';
import 'package:git/presentation/app_theme.dart';
import 'package:git/presentation/dimension.dart';

class AppIcon extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final IconData? icon;

  AppIcon(
      {this.onPressed, this.boxShape = BoxShape.rectangle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 100,
        width: 100,
        padding: AppPadding.padding1,
        decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: BorderRadius.circular(20),
            color: activeTheme.primaryColor),
        child: Center(
          child: Icon(
            icon,
            size: 60,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
