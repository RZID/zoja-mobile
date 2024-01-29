import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter/material.dart';
import '/app/controllers/home_controller.dart';
import 'package:flutter_app/constants/colors.dart';
import 'dart:developer' as developer;
import 'package:flutter_app/resources/widgets/stacked_item_widget.dart';
import 'package:flutter_app/resources/widgets/home_profile_widget.dart';
import 'package:flutter_app/resources/widgets/bottom_navigation_widget.dart';

class HomePage extends NyStatefulWidget<HomeController> {
  static const path = '/home';

  HomePage() : super(path, child: _HomePageState());
}

class _HomePageState extends NyState<HomePage> {
  @override
  Widget view(BuildContext context) {
    return Scaffold(
      backgroundColor: colors['light'],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeProfileWidget(),
          StackedItem(
            title: "Income",
            beforeColor: colors['primary']!,
            color: colors['success']!,
            titleColor: colors['light']!,
            onPressed: () => developer.log("To income"),
            value: 'Rp. 200.000',
          ),
          StackedItem(
            title: "Expenses",
            beforeColor: colors['success']!,
            color: colors['warning']!,
            titleColor: colors['light']!,
            onPressed: () => developer.log("To expense"),
            value: 'Rp. 200.000',
          ),
          Expanded(
              flex: 1,
              child: (StackedItem(
                title: "",
                beforeColor: colors['warning']!,
                color: colors['light']!,
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Accounts",
                      style: TextStyle(
                          color: colors['secondary'],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 24),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tahapan Gold',
                                  style: TextStyle(
                                      color: colors['gold'],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("604-251-6925")
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        developer.log("Spill akun coy"),
                                    child: Text("IDR xxx"),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.black26))
                              ],
                            )
                          ]),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                )),
              ))),
          BottomBarNavigation()
        ],
      ),
    );
  }

  bool get isThemeDark =>
      ThemeProvider.controllerOf(context).currentThemeId ==
      getEnv('DARK_THEME_ID');
}
