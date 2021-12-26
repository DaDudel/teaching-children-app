import 'package:application/screens/finishScreen.dart';
import 'package:application/screens/mainScreen.dart';
import 'package:application/screens/rankingScreen.dart';
import 'package:application/screens/riddles/firstType.dart';
import 'package:application/screens/riddles/secondType.dart';
import 'package:application/screens/riddles/thirdType.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: MainScreen, initial: true),
    AutoRoute(page: FirstType, name: 'FirstRiddle'),
    AutoRoute(page: RankingScreen),
    AutoRoute(page: SecondType, name: 'SecondRiddle'),
    AutoRoute(page: ThirdType, name: 'ThirdRiddle'),
    AutoRoute(page: FinishScreen, name: 'Finish'),
  ],
)
class $AppRouter {}
