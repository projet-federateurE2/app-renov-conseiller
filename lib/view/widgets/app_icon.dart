import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

/*
 * AppIcon widget witch allows to create an icon
 *
 * @params boxShape, onPressed, icon, size
 */
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
    double borderRadius = (size == IconSize.big) ? AppDimens.m : AppDimens.s;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size.backgroundSize,
        width: size.backgroundSize,
        padding: const EdgeInsets.all(AppDimens.xxs),
        decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: BorderRadius.circular(borderRadius),
            color: AppLightTheme.primaryColor,),
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
        return AppIconDimens.bigBackgroundSize;
      default:
        return AppIconDimens.mediumBackgroundSize;
    }
  }

  double get iconSize {
    switch (this) {
      case IconSize.big:
        return AppIconDimens.bigIconSize;
      default:
        return AppIconDimens.mediumIconSize;
    }
  }
}
