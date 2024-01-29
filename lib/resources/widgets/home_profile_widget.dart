import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:flutter_app/constants/colors.dart';
import 'dart:developer' as developer;

class HomeProfileWidget extends StatelessWidget {
  const HomeProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors['primary'],
      child: SafeArea(
          bottom: false,
          child: Column(children: [
            Padding(
                padding: EdgeInsets.only(left: 35, right: 35),
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 24,
                      bottom: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnN8ZW58MHx8MHx8fDA%3D'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Hello, ',
                                  style: TextStyle(
                                      color: colors['light'],
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Ramadhanu!',
                                  style: TextStyle(
                                      color: colors['light'],
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () => developer.log('ahihi'),
                            icon: Iconify(
                              Ic.baseline_dehaze,
                              color: colors['light'],
                            ))
                      ],
                      mainAxisSize: MainAxisSize.max,
                    ))),
          ])),
    );
  }
}
