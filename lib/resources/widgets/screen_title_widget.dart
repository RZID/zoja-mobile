import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class ScreenTitle extends StatelessWidget {
  // const ScreenTitle({Key? key}) : super(key: key);
  const ScreenTitle({this.child = null});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextButton(
          onPressed: () => Navigator.pop(context),
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(0), shape: CircleBorder()),
          child: Iconify(
            MaterialSymbols.chevron_left_rounded,
            size: 30,
            color: colors['light'],
          )),
      child != null
          ? Container(
              child: Expanded(
                child: child!,
                flex: 1,
              ),
            )
          : SizedBox()
    ]);
  }
}
