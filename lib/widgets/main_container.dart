import 'package:flutter/material.dart';
import 'package:git/themes/dimension.dart';
import '../themes/app_theme.dart';

class MainContainer extends StatelessWidget {
  final Widget content;
 const MainContainer({Key? key, required this.content, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      elevation: 10,

      borderRadius: AppRadius.radius3,
      color: AppColors.white,
      child: Container(
              height: 952,
              width: 1288,

             child: content,
        ),
    );
  }
}
