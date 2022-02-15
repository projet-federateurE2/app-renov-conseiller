import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

class MainTextField extends StatelessWidget {
  final String hint;
  final bool hasIcon;
  final String label;

  const MainTextField(this.hint, this.hasIcon, this.label, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650,
      height: 64,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(AppDimens.m),
        color: AppColors.lightPrimaryColorLight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: AppDimens.m,
          ),
          Expanded(
            child: TextFormField(
              initialValue: label,
              style: AppLightTheme.bodyText1,
              decoration: InputDecoration.collapsed(
                hintText: hint,
              ),
            ),
          ),
          Visibility(
            visible: hasIcon,
            child: const Icon(
              Icons.close,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
        ],
      ),
    );
  }
}
