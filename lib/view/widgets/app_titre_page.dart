import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

/*
 * AppTitrePage widget witch allows to create a title for the page
 *
 * @params titre1, titre2, titre3
 */
class AppTitrePage extends StatelessWidget {
  final String titre1;
  final String? titre2;
  final String? titre3;

  const AppTitrePage({Key? key, required this.titre1, this.titre2, this.titre3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Condition to have just title 1
    if (titre2 == null && titre3 == null) {
      return Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, AppDimens.m, 0),
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.lightSecondaryColor,
              size: AppDimens.l,
            ),
          ),
          Text(
            titre1,
            style: AppLightTheme.headline1,
          )
        ],
      );
    }
    // Condition to have title 1 and title 2
    else if (titre3 == null) {
      return Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, AppDimens.m, 0),
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.lightSecondaryColor,
              size: AppDimens.l,
            ),
          ),
          Text(
            titre1,
            style: AppLightTheme.headline1,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(AppDimens.l, 0, AppDimens.l, 0),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.lightSecondaryColor,
              size: AppDimens.m,
            ),
          ),
          Text(
            titre2!,
            style: AppLightTheme.headline2,
          )
        ],
      );
    }
    // Condition to have all three titles
    else {
      return Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, AppDimens.m, 0),
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.lightSecondaryColor,
              size: AppDimens.l,
            ),
          ),
          Text(
            titre1,
            style: AppLightTheme.headline1,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(AppDimens.l, 0, AppDimens.l, 0),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.lightSecondaryColor,
              size: AppDimens.m,
            ),
          ),
          Text(
            titre2!,
            style: AppLightTheme.headline2,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(AppDimens.l, 0, AppDimens.l, 0),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.lightSecondaryColor,
              size: AppDimens.m,
            ),
          ),
          Text(
            titre3!,
            style: AppLightTheme.headline3,
          )
        ],
      );
    }
  }
}
