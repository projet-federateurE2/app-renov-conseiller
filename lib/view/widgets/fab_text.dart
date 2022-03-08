import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

import 'app_icon.dart';

/*
 * FabText widget witch allows to give a name for the floating action button
 *
 * @params text, textSide, onPressed, icon
 */
class FabText extends StatelessWidget {
  final String text;
  final TextSide textSide;
  final Function()? onPressed;
  final IconData icon;

  const FabText(
      {Key? key,
      required this.text,
      required this.textSide,
      this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (textSide == TextSide.right) {
      return Container(
        padding: const EdgeInsets.all(AppDimens.xxs),
        child: Row(
          children: [
            AppIcon(
              onPressed: onPressed,
              icon: icon,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.s),
                child: Text(
                  text,
                  style: AppLightTheme.headline2,
                  textAlign: TextAlign.left,
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(AppDimens.xxs),
        margin: const EdgeInsets.all(AppDimens.xs),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.s),
                child: Text(
                  text,
                  style: AppLightTheme.headline2,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            AppIcon(
              onPressed: onPressed,
              icon: icon,
            ),
          ],
        ),
      );
    }
  }
}

// enumeration witch allows to specify if the text is in the right of the icon or in the left
enum TextSide {
  left,
  right,
}
