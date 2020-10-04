import 'dart:async';

import 'package:assesment/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    Timer.periodic(Duration(seconds: 5), (timer) {
      ExtendedNavigator.of(context).replace(Routes.homeScreen);
    });
    return Center(
      child: Image(
        image: AssetImage(
          'assets/splash-background.png',
        ),
        fit: BoxFit.contain,
      ),
    );
  }
}
