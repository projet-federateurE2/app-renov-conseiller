import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

class SecondaryContainer extends StatelessWidget {
  final Widget content;

  const SecondaryContainer({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: AppRadius.radius5,
      color: AppColors.white,
      child: SizedBox(
        height: 952,
        width: 1288,
        child: content,
      ),
    );
  }
}
