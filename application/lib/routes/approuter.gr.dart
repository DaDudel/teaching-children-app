// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../screens/finishScreen.dart' as _i6;
import '../screens/finishTrainingScreen.dart' as _i9;
import '../screens/mainScreen.dart' as _i1;
import '../screens/rankingScreen.dart' as _i3;
import '../screens/rankingScreenAfterGame.dart' as _i10;
import '../screens/riddles/firstType.dart' as _i2;
import '../screens/riddles/fourthType.dart' as _i7;
import '../screens/riddles/secondType.dart' as _i4;
import '../screens/riddles/thirdType.dart' as _i5;
import '../screens/trainingScreen.dart' as _i8;
import '../utils/userScore.dart' as _i13;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    FirstRiddle.name: (routeData) {
      final args = routeData.argsAs<FirstRiddleArgs>(
          orElse: () => const FirstRiddleArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.FirstType(
              key: args.key,
              riddleNumber: args.riddleNumber,
              trainingMode: args.trainingMode));
    },
    RankingScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RankingScreen());
    },
    SecondRiddle.name: (routeData) {
      final args = routeData.argsAs<SecondRiddleArgs>(
          orElse: () => const SecondRiddleArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.SecondType(
              key: args.key,
              riddleNumber: args.riddleNumber,
              trainingMode: args.trainingMode));
    },
    ThirdRiddle.name: (routeData) {
      final args = routeData.argsAs<ThirdRiddleArgs>(
          orElse: () => const ThirdRiddleArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ThirdType(
              key: args.key,
              riddleNumber: args.riddleNumber,
              trainingMode: args.trainingMode));
    },
    Finish.name: (routeData) {
      final args =
          routeData.argsAs<FinishArgs>(orElse: () => const FinishArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i6.FinishScreen(key: args.key, riddleNumber: args.riddleNumber));
    },
    FourthRiddle.name: (routeData) {
      final args = routeData.argsAs<FourthRiddleArgs>(
          orElse: () => const FourthRiddleArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.FourthType(
              key: args.key,
              riddleNumber: args.riddleNumber,
              trainingMode: args.trainingMode));
    },
    Training.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.TrainingScreen());
    },
    FinishTraining.name: (routeData) {
      final args = routeData.argsAs<FinishTrainingArgs>(
          orElse: () => const FinishTrainingArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.FinishTrainingScreen(
              key: args.key, riddleNumber: args.riddleNumber));
    },
    RankingAfterGame.name: (routeData) {
      final args = routeData.argsAs<RankingAfterGameArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.RankingScreenAfterGame(
              key: args.key, userScore: args.userScore));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(MainScreenRoute.name, path: '/'),
        _i11.RouteConfig(FirstRiddle.name, path: '/first-type'),
        _i11.RouteConfig(RankingScreenRoute.name, path: '/ranking-screen'),
        _i11.RouteConfig(SecondRiddle.name, path: '/second-type'),
        _i11.RouteConfig(ThirdRiddle.name, path: '/third-type'),
        _i11.RouteConfig(Finish.name, path: '/finish-screen'),
        _i11.RouteConfig(FourthRiddle.name, path: '/fourth-type'),
        _i11.RouteConfig(Training.name, path: '/training-screen'),
        _i11.RouteConfig(FinishTraining.name, path: '/finish-training-screen'),
        _i11.RouteConfig(RankingAfterGame.name,
            path: '/ranking-screen-after-game')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i11.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '/');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.FirstType]
class FirstRiddle extends _i11.PageRouteInfo<FirstRiddleArgs> {
  FirstRiddle({_i12.Key? key, int riddleNumber = 1, int trainingMode = 0})
      : super(FirstRiddle.name,
            path: '/first-type',
            args: FirstRiddleArgs(
                key: key,
                riddleNumber: riddleNumber,
                trainingMode: trainingMode));

  static const String name = 'FirstRiddle';
}

class FirstRiddleArgs {
  const FirstRiddleArgs(
      {this.key, this.riddleNumber = 1, this.trainingMode = 0});

  final _i12.Key? key;

  final int riddleNumber;

  final int trainingMode;

  @override
  String toString() {
    return 'FirstRiddleArgs{key: $key, riddleNumber: $riddleNumber, trainingMode: $trainingMode}';
  }
}

/// generated route for
/// [_i3.RankingScreen]
class RankingScreenRoute extends _i11.PageRouteInfo<void> {
  const RankingScreenRoute()
      : super(RankingScreenRoute.name, path: '/ranking-screen');

  static const String name = 'RankingScreenRoute';
}

/// generated route for
/// [_i4.SecondType]
class SecondRiddle extends _i11.PageRouteInfo<SecondRiddleArgs> {
  SecondRiddle({_i12.Key? key, int riddleNumber = 1, int trainingMode = 0})
      : super(SecondRiddle.name,
            path: '/second-type',
            args: SecondRiddleArgs(
                key: key,
                riddleNumber: riddleNumber,
                trainingMode: trainingMode));

  static const String name = 'SecondRiddle';
}

class SecondRiddleArgs {
  const SecondRiddleArgs(
      {this.key, this.riddleNumber = 1, this.trainingMode = 0});

  final _i12.Key? key;

  final int riddleNumber;

  final int trainingMode;

  @override
  String toString() {
    return 'SecondRiddleArgs{key: $key, riddleNumber: $riddleNumber, trainingMode: $trainingMode}';
  }
}

/// generated route for
/// [_i5.ThirdType]
class ThirdRiddle extends _i11.PageRouteInfo<ThirdRiddleArgs> {
  ThirdRiddle({_i12.Key? key, int riddleNumber = 1, int trainingMode = 0})
      : super(ThirdRiddle.name,
            path: '/third-type',
            args: ThirdRiddleArgs(
                key: key,
                riddleNumber: riddleNumber,
                trainingMode: trainingMode));

  static const String name = 'ThirdRiddle';
}

class ThirdRiddleArgs {
  const ThirdRiddleArgs(
      {this.key, this.riddleNumber = 1, this.trainingMode = 0});

  final _i12.Key? key;

  final int riddleNumber;

  final int trainingMode;

  @override
  String toString() {
    return 'ThirdRiddleArgs{key: $key, riddleNumber: $riddleNumber, trainingMode: $trainingMode}';
  }
}

/// generated route for
/// [_i6.FinishScreen]
class Finish extends _i11.PageRouteInfo<FinishArgs> {
  Finish({_i12.Key? key, int riddleNumber = 1})
      : super(Finish.name,
            path: '/finish-screen',
            args: FinishArgs(key: key, riddleNumber: riddleNumber));

  static const String name = 'Finish';
}

class FinishArgs {
  const FinishArgs({this.key, this.riddleNumber = 1});

  final _i12.Key? key;

  final int riddleNumber;

  @override
  String toString() {
    return 'FinishArgs{key: $key, riddleNumber: $riddleNumber}';
  }
}

/// generated route for
/// [_i7.FourthType]
class FourthRiddle extends _i11.PageRouteInfo<FourthRiddleArgs> {
  FourthRiddle({_i12.Key? key, int riddleNumber = 1, int trainingMode = 0})
      : super(FourthRiddle.name,
            path: '/fourth-type',
            args: FourthRiddleArgs(
                key: key,
                riddleNumber: riddleNumber,
                trainingMode: trainingMode));

  static const String name = 'FourthRiddle';
}

class FourthRiddleArgs {
  const FourthRiddleArgs(
      {this.key, this.riddleNumber = 1, this.trainingMode = 0});

  final _i12.Key? key;

  final int riddleNumber;

  final int trainingMode;

  @override
  String toString() {
    return 'FourthRiddleArgs{key: $key, riddleNumber: $riddleNumber, trainingMode: $trainingMode}';
  }
}

/// generated route for
/// [_i8.TrainingScreen]
class Training extends _i11.PageRouteInfo<void> {
  const Training() : super(Training.name, path: '/training-screen');

  static const String name = 'Training';
}

/// generated route for
/// [_i9.FinishTrainingScreen]
class FinishTraining extends _i11.PageRouteInfo<FinishTrainingArgs> {
  FinishTraining({_i12.Key? key, int riddleNumber = 1})
      : super(FinishTraining.name,
            path: '/finish-training-screen',
            args: FinishTrainingArgs(key: key, riddleNumber: riddleNumber));

  static const String name = 'FinishTraining';
}

class FinishTrainingArgs {
  const FinishTrainingArgs({this.key, this.riddleNumber = 1});

  final _i12.Key? key;

  final int riddleNumber;

  @override
  String toString() {
    return 'FinishTrainingArgs{key: $key, riddleNumber: $riddleNumber}';
  }
}

/// generated route for
/// [_i10.RankingScreenAfterGame]
class RankingAfterGame extends _i11.PageRouteInfo<RankingAfterGameArgs> {
  RankingAfterGame({_i12.Key? key, required _i13.UserScore userScore})
      : super(RankingAfterGame.name,
            path: '/ranking-screen-after-game',
            args: RankingAfterGameArgs(key: key, userScore: userScore));

  static const String name = 'RankingAfterGame';
}

class RankingAfterGameArgs {
  const RankingAfterGameArgs({this.key, required this.userScore});

  final _i12.Key? key;

  final _i13.UserScore userScore;

  @override
  String toString() {
    return 'RankingAfterGameArgs{key: $key, userScore: $userScore}';
  }
}
