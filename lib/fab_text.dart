import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git/presentation/app_icon.dart';
import 'package:git/presentation/app_theme.dart';
import 'package:git/presentation/dimension.dart';
import 'package:git/presentation/text_side.dart';

class FabText extends StatelessWidget {
  final String text;
  final TextSide textSide;
  final Function()? onPressed;
  final IconData icon;

  FabText(
      {required this.text,
      required this.textSide,
      this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    if (textSide == TextSide.right) {
      return Container(
        width: 350,
        padding: AppPadding.padding1,
        child: Row(
          children: [
            AppIcon(onPressed: onPressed, icon: icon),
            Expanded(
              child: Padding(
                padding: AppPadding.leftPadding5,
                child: Text(
                  text,
                  style: activeTheme.textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        width: 350,
        padding: AppPadding.padding1,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: AppPadding.rightPadding5,
                child: Text(
                  text,
                  style: activeTheme.textTheme.headline5,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            AppIcon(onPressed: onPressed, icon: icon),
          ],
        ),
      );
    }
  }
}
