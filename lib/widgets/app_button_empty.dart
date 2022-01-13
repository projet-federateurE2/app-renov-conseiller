import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';

class AppButtonEmpty extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;

  AppButtonEmpty(
      {this.onPressed, this.boxShape = BoxShape.rectangle, required this.text});

  @override
  Widget build(BuildContext context) {
    //Theme.of(context).primaryColor;
    return TextButton(
      onPressed: (){},
      //style: TextButton.styleFrom(),
      child: Container(
        width: 348,
        height: 54,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightPrimaryColor,width: 3.0),
            shape: boxShape,
            borderRadius: BorderRadius.circular(20),),
        child: Center(
          child: Text(
            text,
            style: lightTheme.buttonEmpty,
          ),
        ),
      ),
    );
  }
}
