import 'package:application/theming/myColors.dart';
import 'package:application/utils/userScore.dart';
import 'package:application/widgets/myButton.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:application/utils/userScoreWithPos.dart';
import 'package:google_fonts/google_fonts.dart';

class RankingScreenAfterGame extends StatelessWidget {
  const RankingScreenAfterGame({
    Key? key,
    this.nickname = "",
    this.points = -1,
  }) : super(key: key);

  final String nickname;
  final int points;
//   @override
//   _RankingScreenAfterGameState createState() => _RankingScreenAfterGameState();
// }

// class _RankingScreenAfterGameState extends State<RankingScreenAfterGame> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    UserScore userScore = UserScore(nickname, points);

    Future<List<UserScore>> getData() async {
      QuerySnapshot querySnapshot =
          await users.orderBy('points', descending: true).get();
      final allData = querySnapshot.docs
          .map((doc) => UserScore.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return allData;
    }

    return Container(
        color: MyColors().myAmber,
        child: Column(
          children: [
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text('Ranking',
                    style: GoogleFonts.mcLaren(
                      fontSize: 64,
                    )),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              height: 400,
              child: Column(
                children: [
                  Expanded(
                    //flex: 2,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 11.0,
                              spreadRadius: 0.0,
                              offset: Offset(0.0, 4.0),
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: MyColors().secondaryColor,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          textStyle: TextStyle(color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Pozycja',
                                  style: GoogleFonts.mcLaren(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Pseudonim',
                                  style: GoogleFonts.mcLaren(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Punkty',
                                  style: GoogleFonts.mcLaren(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 11.0,
                              spreadRadius: 0.0,
                              offset: Offset(0.0, 4.0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FutureBuilder<List<UserScore>>(
                            future: getData(),
                            builder: (BuildContext context,
                                AsyncSnapshot<List<UserScore>> snapshot) {
                              if (snapshot.hasError) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        "WYSTĄPIŁ PROBLEM",
                                        style: GoogleFonts.mcLaren(
                                          color: Colors.black,
                                          fontSize: 32,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                                ;
                              }
                              if (snapshot.hasData &&
                                  snapshot.data!.length == 0) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        "NIEPOPRAWNE DANE",
                                        style: GoogleFonts.mcLaren(
                                          color: Colors.black,
                                          fontSize: 32,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                var length = snapshot.data!.length;

                                var pos = 0;
                                List<UserScoreWithPos> scoresWithPos = [];
                                for (int i = 0; i < length; i++) {
                                  pos++;
                                  if (i > 0 &&
                                      snapshot.data![i].points ==
                                          snapshot.data![i - 1].points) {
                                    pos--;
                                  }
                                  scoresWithPos.add(new UserScoreWithPos(
                                      pos,
                                      snapshot.data![i].nickname,
                                      snapshot.data![i].points));
                                }
                                UserScoreWithPos playerScore =
                                    UserScoreWithPos(-1, 'ERROR', -1);
                                for (UserScoreWithPos element
                                    in scoresWithPos) {
                                  if (element.nickname == userScore.nickname &&
                                      element.points == userScore.points) {
                                    playerScore.position = element.position;
                                    playerScore.nickname = element.nickname;
                                    playerScore.points = element.points;
                                    break;
                                  }
                                }
                                for (int i = 0; i < scoresWithPos.length; i++) {
                                  if (scoresWithPos[i].position > 10) {
                                    scoresWithPos.removeRange(
                                        i, scoresWithPos.length);
                                    break;
                                  }
                                }
                                // scoresWithPos.forEach((element) {
                                //   print(element.position.toString() +
                                //       ' ' +
                                //       element.nickname +
                                //       ' ' +
                                //       element.points.toString());
                                // });

                                if (playerScore.position > 10) {
                                  scoresWithPos.add(playerScore);
                                }

                                var fixedLength = scoresWithPos.length;
                                return ListView.builder(
                                  cacheExtent: double.infinity,
                                  itemCount: fixedLength,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      child: ListTile(
                                        onTap: () {},
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(scoresWithPos[index]
                                                .position
                                                .toString()),
                                            Text(scoresWithPos[index].nickname),
                                            Text(scoresWithPos[index]
                                                .points
                                                .toString()),
                                          ],
                                        ),
                                      ),
                                      // title: Text(scores[index].userName)),
                                    );
                                  },
                                );
                              }
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        child: Text(
                                          "ŁADOWANIE",
                                          style: GoogleFonts.mcLaren(
                                            color: Colors.black,
                                            fontSize: 32,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            MyButton(
                buttonText: 'Kontynuuj',
                onPressed: () => {navigateToMain(context)}),
            Expanded(
              child: Container(),
            ),
          ],
        ));
  }
}

void navigateToMain(BuildContext context) {
  context.router.navigateNamed('/');
}
