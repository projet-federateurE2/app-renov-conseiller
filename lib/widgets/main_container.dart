import 'package:flutter/material.dart';
import 'package:git/themes/dimension.dart';
import '../themes/app_theme.dart';

class MainContainer extends StatelessWidget {
  final Widget content;
 const MainContainer({Key? key, required this.content, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 952,
            width: 1288,
            decoration: BoxDecoration(
                borderRadius: AppRadius.radius3,
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
           child: content,
      );
  }
}
