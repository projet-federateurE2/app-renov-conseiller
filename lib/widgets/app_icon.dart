import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

class AppIcon extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final IconData icon;
  final IconSize size;

  const AppIcon(
      {Key? key,
      this.onPressed,
      this.boxShape = BoxShape.rectangle,
      required this.icon,
      this.size = IconSize.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size.backgroundSize,
        width: size.backgroundSize,
        padding: AppPadding.padding1,
        decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: AppRadius.radius1,
            color: lightTheme.primaryColor),
        child: Center(
          child: Icon(
            icon,
            size: size.iconSize,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

enum IconSize { normal, big }

extension IconSizeExtension on IconSize {
  double get backgroundSize {
    switch (this) {
      case IconSize.big:
        return 90;
      default:
        return 72;
    }
  }

  double get iconSize {
    switch (this) {
      case IconSize.big:
        return 64;
      default:
        return 48;
    }
  }
}
