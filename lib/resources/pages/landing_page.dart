import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:developer' as developer;
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';

class LandingPage extends NyStatefulWidget {
  static const path = '/landing';

  LandingPage() : super(path, child: _LandingPageState());
}

class _LandingPageState extends NyState<LandingPage> {
  @override
  init() async {}

  @override
  Widget view(BuildContext context) {
    const taglines = [
      'One app, infinite financial possibilities. Bank, invest, and pay with freedom.',
      'Level up your money game. All-in-one banking, investing, and payments built for the future.',
      'Ditch the juggling act. Simplify your finances with the ultimate finance superpower.',
      "No more banking, investing, and payment app juggling. We've got you covered in one place.",
      "Grow your wealth, manage your budget, and spend with ease. Unlocking smarter financial habits.",
      "Tired of fees and hassles? Experience seamless banking, investments, and payments without breaking the bank.",
      "Where are your finances headed? Take control with our all-in-one banking, investing, and payment platform.",
      "Ready to unleash your money's true potential? Invest, bank, and pay smarter with us.",
      "Dream big, spend smart, invest wise. Discover the future of finance with our groundbreaking app."
    ];

    return Scaffold(
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: SafeArea(
                  child: Container(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Zoja",
                                style: TextStyle(
                                    color: colors['primary'],
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 50),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'public/assets/images/illustrations/illustration_1.svg',
                                              fit: BoxFit.contain,
                                              height: 150,
                                            )
                                          ],
                                        ),
                                        AnimatedTextKit(
                                          animatedTexts: taglines
                                              .map((el) =>
                                                  TypewriterAnimatedText(
                                                      el,
                                                      speed:
                                                          const Duration(
                                                              milliseconds: 25),
                                                      textStyle: TextStyle(
                                                          color:
                                                              colors['dark'])))
                                              .toList(),
                                          isRepeatingAnimation: true,
                                          repeatForever: true,
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ))),
                  bottom: false,
                ),
              ),
              Container(
                child: Column(children: [
                  SvgPicture.asset(
                    'public/assets/images/waves/wave_1.svg',
                    color: colors['primary'],
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: colors['primary'],
                    child: SafeArea(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Let's get started!",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: colors['light'],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    children: [
                                      TextButton(
                                        onPressed: () => Navigator.pushNamed(
                                            context, "/login"),
                                        child: Container(
                                            width: double.maxFinite,
                                            child: Text(
                                              "Sign-in",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: colors['light'],
                                                  fontWeight: FontWeight.w600),
                                            )),
                                        style: TextButton.styleFrom(
                                            backgroundColor: colors['warning']),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pushNamed(
                                            context, '/register'),
                                        child: Container(
                                            width: double.maxFinite,
                                            child: Text(
                                              "Create account",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: colors['light'],
                                                  fontWeight: FontWeight.w600),
                                            )),
                                        style: TextButton.styleFrom(
                                            backgroundColor: colors['warning']),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              child: SizedBox(
                                            height: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: colors['light']!),
                                                ),
                                              ),
                                            ),
                                          )),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "or",
                                            style: TextStyle(
                                                color: colors['light'],
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                              child: SizedBox(
                                            height: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: colors['light']!),
                                                ),
                                              ),
                                            ),
                                          )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextButton(
                                              child: Iconify(
                                                  Logos.facebook) // widget
                                              ,
                                              onPressed: () =>
                                                  developer.log("Facebook"),
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                              )),
                                          TextButton(
                                              child: Iconify(Logos.google_icon),
                                              onPressed: () =>
                                                  developer.log("Google"),
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                              )),
                                          TextButton(
                                              child: Iconify(Logos.twitter),
                                              onPressed: () =>
                                                  developer.log("Twitter"),
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () =>
                                              developer.log('Help'),
                                          child: Text(
                                            "Having trouble finding your account?",
                                            style: TextStyle(
                                                color: colors['light']),
                                          ))
                                    ],
                                  )
                                ])),
                        top: false),
                    width: double.maxFinite,
                  )
                ]),
              )
            ]),
        color: colors['light'],
        height: double.maxFinite,
        width: double.maxFinite,
      ),
    );
  }
}
