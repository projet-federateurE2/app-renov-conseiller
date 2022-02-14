import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';

class AppTitrePage extends StatelessWidget {
  final String titre1;
  final String? titre2;
  final String? titre3;

  const AppTitrePage({Key? key, required this.titre1, this.titre2, this.titre3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (titre2 == null && titre3 == null) {
      return Row(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: const Icon(Icons.arrow_back,
                  color: AppColors.lightSecondaryColor, size: 35)),
          Text(titre1, style: lightTheme.headline1)
        ],
      );
    } else if (titre3 == null) {
      return Row(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: const Icon(Icons.arrow_back,
                  color: AppColors.lightSecondaryColor, size: 35)),
          Text(titre1, style: lightTheme.headline1),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Icon(Icons.arrow_forward_ios,
                  color: AppColors.lightSecondaryColor, size: 20)),
          Text(
            titre2!,
            style: lightTheme.headline2,
          )
        ],
      );
    } else {
      return Row(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: const Icon(Icons.arrow_back,
                  color: AppColors.lightSecondaryColor, size: 35)),
          Text(
            titre1,
            style: lightTheme.headline1,
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Icon(Icons.arrow_forward_ios,
                  color: Color(0xff052948), size: 20)),
          Text(
            titre2!,
            style: lightTheme.headline2,
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Icon(Icons.arrow_forward_ios,
                  color: AppColors.lightSecondaryColor, size: 20)),
          Text(
            titre3!,
            style: lightTheme.headline3,
          )
        ],
      );
    }
  }
}
