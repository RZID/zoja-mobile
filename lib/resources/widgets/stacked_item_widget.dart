import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class StackedItem extends StatelessWidget {
  const StackedItem(
      {this.beforeColor = Colors.white,
      this.color = Colors.white,
      this.title = "",
      this.titleColor = Colors.black,
      this.onPressed = null,
      this.value = null,
      this.child = null});

  final Color beforeColor;
  final Color color;
  final String? title;
  final Color titleColor;
  final Function()? onPressed;
  final String? value;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Widget Child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title as String,
                style:
                    TextStyle(color: titleColor, fontWeight: FontWeight.w600)),
            Row(
              children: [
                value != null
                    ? Text(
                        value as String,
                        style: TextStyle(color: titleColor),
                      )
                    : SizedBox(),

                onPressed == null
                    ? SizedBox()
                    : Iconify(
                        MaterialSymbols.chevron_right_rounded,
                        color: titleColor,
                      ) // widget
              ],
            )
          ],
        ),
        child == null ? SizedBox() : child as Widget,
      ],
    );

    EdgeInsetsDirectional Padding = EdgeInsetsDirectional.symmetric(
      horizontal: 35.0,
      vertical: 15.0,
    );

    BorderRadius BorderRadiusButton =
        BorderRadius.only(topLeft: Radius.circular(30.0));

    return Container(
        child: onPressed == null
            ? Container(
                child: Child,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadiusButton,
                ),
                padding: Padding)
            : ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    padding: Padding,
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadiusButton,
                        side: BorderSide(color: Colors.transparent))),
                    backgroundColor: color),
                child: Child,
              ),
        color: beforeColor);
  }
}
