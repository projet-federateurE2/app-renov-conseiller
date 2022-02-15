import 'package:flutter/material.dart';
import 'package:git/themes/dimension.dart';

import '../themes/app_theme.dart';

class MainContainer extends StatelessWidget {
  final Widget content;

  const MainContainer({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: AppDimens.s,
      borderRadius: BorderRadius.circular(AppDimens.m),
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.l),
        child: content,
      ),
    );
  }
}
