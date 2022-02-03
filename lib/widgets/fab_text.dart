import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git/widgets/app_icon.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/widgets/text_side.dart';

class FabText extends StatelessWidget {
  final String text;
  final TextSide textSide;
  final Function()? onPressed;
  final IconData icon;

  const FabText(
      {Key? key, required this.text,
      required this.textSide,
      this.onPressed,
      required this.icon}) : super(key: key);

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
                  style: lightTheme.headline5,
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
        margin: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: AppPadding.rightPadding5,
                child: Text(
                  text,
                  style: lightTheme.headline5,
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
