import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';

import 'app_icon.dart';

/*
 * ListItem class witch allows to select/unselect an item of the list
 *
 * @params title, onPressed, icon, selected
 */
class ListItem extends StatefulWidget {
  final String title;
  final String subTitle;
  final Function()? onPressed;
  final IconData icon;
  final bool selected;

  const ListItem(
      {Key? key, required this.title,
        this.onPressed,
        required this.subTitle,
        required this.icon,
        required this.selected}) : super(key:key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
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
                    widget.subTitle != ""?Text(
                      widget.subTitle,
                      style: AppLightTheme.subtitle1,
                    ):Container(),
                    const SizedBox(
                      height: AppDimens.l,
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