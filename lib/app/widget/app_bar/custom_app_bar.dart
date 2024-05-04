import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style { bgFill }

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 44.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 44.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 44.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        );
      default:
        return null;
    }
  }
}
