import 'package:flutter/material.dart';
import 'app_theme.dart';

class SecondaryContainer extends StatelessWidget {
  const SecondaryContainer({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColors.white,
      padding: const EdgeInsets.only(left: 484,top: 32, right: 40),
      child: Container(
        height: 952,
        width: 1288,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(41),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}
