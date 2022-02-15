import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/widgets/app_icon.dart';

class CategoryItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final Function()? onPressed;
  final IconData icon;
  final bool selected;

  const CategoryItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.onPressed,
      required this.icon,
      required this.selected})
      : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool _selected = false;

  @override
  void initState() {
    _selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
        widget.onPressed;
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(AppDimens.s),
          color: _selected ? AppColors.lightPrimaryColorLight : AppColors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.s),
        margin: const EdgeInsets.only(bottom: AppDimens.xs),
        child: Row(
          children: [
            AppIcon(icon: widget.icon),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.s),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: AppLightTheme.headline2,
                    ),
                    const SizedBox(
                      height: AppDimens.xs,
                    ),
                    Text(
                      widget.subtitle,
                      style: AppLightTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
