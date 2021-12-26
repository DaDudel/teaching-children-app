// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/finishScreen.dart' as _i6;
import '../screens/mainScreen.dart' as _i1;
import '../screens/rankingScreen.dart' as _i3;
import '../screens/riddles/firstType.dart' as _i2;
import '../screens/riddles/secondType.dart' as _i4;
import '../screens/riddles/thirdType.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    FirstRiddle.name: (routeData) {
      final args = routeData.argsAs<FirstRiddleArgs>(
          orElse: () => const FirstRiddleArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.FirstType(key: args.key, riddleNumber: args.riddleNumber));
    },
    RankingScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RankingScreen());
    },
    SecondRiddle.name: (routeData) {
      final args = routeData.argsAs<SecondRiddleArgs>(
          orElse: () => const SecondRiddleArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.SecondType(key: args.key, riddleNumber: args.riddleNumber));
    },
    ThirdRiddle.name: (routeData) {
      final args = routeData.argsAs<ThirdRiddleArgs>(
          orElse: () => const ThirdRiddleArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ThirdType(key: args.key, riddleNumber: args.riddleNumber));
    },
    Finish.name: (routeData) {
      final args =
          routeData.argsAs<FinishArgs>(orElse: () => const FinishArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i6.FinishScreen(key: args.key, riddleNumber: args.riddleNumber));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(MainScreenRoute.name, path: '/'),
        _i7.RouteConfig(FirstRiddle.name, path: '/first-type'),
        _i7.RouteConfig(RankingScreenRoute.name, path: '/ranking-screen'),
        _i7.RouteConfig(SecondRiddle.name, path: '/second-type'),
        _i7.RouteConfig(ThirdRiddle.name, path: '/third-type'),
        _i7.RouteConfig(Finish.name, path: '/finish-screen')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i7.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '/');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.FirstType]
class FirstRiddle extends _i7.PageRouteInfo<FirstRiddleArgs> {
  FirstRiddle({_i8.Key? key, int riddleNumber = 1})
      : super(FirstRiddle.name,
            path: '/first-type',
            args: FirstRiddleArgs(key: key, riddleNumber: riddleNumber));

  static const String name = 'FirstRiddle';
}

class FirstRiddleArgs {
  const FirstRiddleArgs({this.key, this.riddleNumber = 1});

  final _i8.Key? key;

  final int riddleNumber;

  @override
  String toString() {
    return 'FirstRiddleArgs{key: $key, riddleNumber: $riddleNumber}';
  }
}

/// generated route for
/// [_i3.RankingScreen]
class RankingScreenRoute extends _i7.PageRouteInfo<void> {
  const RankingScreenRoute()
      : super(RankingScreenRoute.name, path: '/ranking-screen');

  static const String name = 'RankingScreenRoute';
}

/// generated route for
/// [_i4.SecondType]
class SecondRiddle extends _i7.PageRouteInfo<SecondRiddleArgs> {
  SecondRiddle({_i8.Key? key, int riddleNumber = 1})
      : super(SecondRiddle.name,
            path: '/second-type',
            args: SecondRiddleArgs(key: key, riddleNumber: riddleNumber));

  static const String name = 'SecondRiddle';
}

class SecondRiddleArgs {
  const SecondRiddleArgs({this.key, this.riddleNumber = 1});

  final _i8.Key? key;

  final int riddleNumber;

  @override
  String toString() {
    return 'SecondRiddleArgs{key: $key, riddleNumber: $riddleNumber}';
  }
}

/// generated route for
/// [_i5.ThirdType]
class ThirdRiddle extends _i7.PageRouteInfo<ThirdRiddleArgs> {
  ThirdRiddle({_i8.Key? key, int riddleNumber = 1})
      : super(ThirdRiddle.name,
            path: '/third-type',
            args: ThirdRiddleArgs(key: key, riddleNumber: riddleNumber));

  static const String name = 'ThirdRiddle';
}

class ThirdRiddleArgs {
  const ThirdRiddleArgs({this.key, this.riddleNumber = 1});

  final _i8.Key? key;

  final int riddleNumber;

  @override
  String toString() {
    return 'ThirdRiddleArgs{key: $key, riddleNumber: $riddleNumber}';
  }
}

/// generated route for
/// [_i6.FinishScreen]
class Finish extends _i7.PageRouteInfo<FinishArgs> {
  Finish({_i8.Key? key, int riddleNumber = 1})
      : super(Finish.name,
            path: '/finish-screen',
            args: FinishArgs(key: key, riddleNumber: riddleNumber));

  static const String name = 'Finish';
}

class FinishArgs {
  const FinishArgs({this.key, this.riddleNumber = 1});

  final _i8.Key? key;

  final int riddleNumber;

  @override
  String toString() {
    return 'FinishArgs{key: $key, riddleNumber: $riddleNumber}';
  }
}
