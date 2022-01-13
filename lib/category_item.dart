import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git/presentation/app_icon.dart';
import 'package:git/presentation/app_theme.dart';
import 'package:git/presentation/dimension.dart';

class CategoryItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final Function()? onPressed;
  final IconData icon;
  final bool selected;

  CategoryItem(
      {required this.title,
      required this.subtitle,
      this.onPressed,
      required this.icon,
      required this.selected});

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
        width: 400,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: AppRadius.radius3,
          color: _selected ? AppColors.lightPrimaryColorLight : AppColors.white,
        ),
        padding: AppPadding.padding5,
        child: Row(
          children: [
            AppIcon(icon: widget.icon),
            Expanded(
              child: Padding(
                padding: AppPadding.leftPadding5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: lightTheme.headline4,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.subtitle,
                      style: lightTheme.headline4,
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
