import 'package:flutter/material.dart';
import 'package:git/presentation/app_theme.dart';
import 'package:git/presentation/dimension.dart';

class AppButton extends StatelessWidget {
  final BoxShape boxShape;
  final Function()? onPressed;
  final String text;

  AppButton(
      {this.onPressed, this.boxShape = BoxShape.rectangle, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Container(
        width: 348,
        height: 54,
        decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: BorderRadius.circular(20),
            color: lightTheme.primaryColor),
        child: Center(
          child: Text(
            text,
            style: lightTheme.buttonFull,
          ),
        ),
      ),
    );
    /*
    return Container(
      width: 348,
      height: 54,
      decoration: BoxDecoration(
          shape: boxShape,
          borderRadius: BorderRadius.circular(20),
          color: lightTheme.primaryColor),
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: lightTheme.buttonFull,
          ),
        ),
      ),
    );*/
  }
}
