import 'package:application/screens/mainScreen.dart';
import 'package:application/screens/rankingScreen.dart';
import 'package:application/screens/riddles/firstType.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: MainScreen, initial: true),
    AutoRoute(page: FirstType, name: 'FirstRiddle'),
    AutoRoute(page: RankingScreen),
  ],
)
class $AppRouter {}
