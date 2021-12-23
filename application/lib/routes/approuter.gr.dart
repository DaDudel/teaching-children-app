// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../screens/mainScreen.dart' as _i1;
import '../screens/rankingScreen.dart' as _i3;
import '../screens/riddles/firstType.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    FirstRiddle.name: (routeData) {
      final args = routeData.argsAs<FirstRiddleArgs>(
          orElse: () => const FirstRiddleArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.FirstType(key: args.key, riddleNumber: args.riddleNumber));
    },
    RankingScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RankingScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MainScreenRoute.name, path: '/'),
        _i4.RouteConfig(FirstRiddle.name, path: '/first-type'),
        _i4.RouteConfig(RankingScreenRoute.name, path: '/ranking-screen')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i4.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '/');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.FirstType]
class FirstRiddle extends _i4.PageRouteInfo<FirstRiddleArgs> {
  FirstRiddle({_i5.Key? key, int riddleNumber = 1})
      : super(FirstRiddle.name,
            path: '/first-type',
            args: FirstRiddleArgs(key: key, riddleNumber: riddleNumber));

  static const String name = 'FirstRiddle';
}

class FirstRiddleArgs {
  const FirstRiddleArgs({this.key, this.riddleNumber = 1});

  final _i5.Key? key;

  final int riddleNumber;

  @override
  String toString() {
    return 'FirstRiddleArgs{key: $key, riddleNumber: $riddleNumber}';
  }
}

/// generated route for
/// [_i3.RankingScreen]
class RankingScreenRoute extends _i4.PageRouteInfo<void> {
  const RankingScreenRoute()
      : super(RankingScreenRoute.name, path: '/ranking-screen');

  static const String name = 'RankingScreenRoute';
}
