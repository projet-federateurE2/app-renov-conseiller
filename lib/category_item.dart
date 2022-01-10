import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git/presentation/app_icon.dart';
import 'package:git/presentation/app_theme.dart';
import 'package:git/presentation/dimension.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? onPressed;
  final IconData icon;

  CategoryItem(
      {required this.title,
      required this.subtitle,
      this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 500,
        padding: AppPadding.padding5,
        child: Row(
          children: [
            AppIcon(icon: icon),
            Expanded(
              child: Padding(
                padding: AppPadding.leftPadding5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: activeTheme.textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtitle,
                      style: activeTheme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
