// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/app_web_view.dart';
import '../pages/home_screen.dart';

class Routes {
  static const String homeScreen = '/';
  static const String appWebView = '/app-web-view';
  static const all = <String>{
    homeScreen,
    appWebView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.appWebView, page: AppWebView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    AppWebView: (data) {
      final args = data.getArgs<AppWebViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => AppWebView(
          key: args.key,
          url: args.url,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomeScreen() => push<dynamic>(Routes.homeScreen);

  Future<dynamic> pushAppWebView({
    Key key,
    @required String url,
  }) =>
      push<dynamic>(
        Routes.appWebView,
        arguments: AppWebViewArguments(key: key, url: url),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AppWebView arguments holder class
class AppWebViewArguments {
  final Key key;
  final String url;
  AppWebViewArguments({this.key, @required this.url});
}
