import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_app/resources/widgets/screen_title_widget.dart';

class RegisterPage extends NyStatefulWidget {
  static const path = '/register';

  RegisterPage() : super(path, child: _RegisterPageState());
}

class _RegisterPageState extends NyState<RegisterPage> {
  @override
  init() async {}

  /// Use boot if you need to load data before the view is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // SECTION: Top side
        Column(children: [
          Container(
            width: double.maxFinite,
            color: colors['primary'],
            child: SafeArea(
                child: Column(
                  children: [
                    ScreenTitle(
                        child: Text(
                      'Registration',
                      style: TextStyle(
                          color: colors['light'],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                    Padding(
                        padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Financial Journey Starts Here!",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: colors['light']),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Register and create your personalized path to financial freedom.",
                                style: TextStyle(color: colors['light']),
                              )
                            ]))
                  ],
                ),
                bottom: false),
          ),
          Transform.flip(
            flipY: true,
            child: SvgPicture.asset(
              "public/assets/images/waves/wave_1.svg",
              color: colors['primary'],
              fit: BoxFit.cover,
            ),
          )
        ]),
        // SECTION: Bottom Side
        Expanded(
            child: Container(
          width: double.maxFinite,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter your full name',
                          ),
                        ),
                        TextFormField(),
                        TextFormField(),
                        TextFormField(),
                        TextFormField(),
                      ],
                    ))
                  ])),
        ))
      ]),
    );
  }
}
