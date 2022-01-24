import 'package:application/theming/myColors.dart';
import 'package:application/utils/userScore.dart';
import 'package:application/widgets/myButton.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<List<UserScore>> getData() async {
      QuerySnapshot querySnapshot =
          await users.orderBy('points', descending: true).get();
      final allData = querySnapshot.docs
          .map((doc) => UserScore.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return allData;
    }

    int place = 0;
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
                                return ListView.builder(
                                  cacheExtent: double.infinity,
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    place++;
                                    if (index > 0 &&
                                        snapshot.data![index].points ==
                                            snapshot.data![index - 1].points) {
                                      place--;
                                    }
                                    return Card(
                                      child: ListTile(
                                        onTap: () {},
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text((place).toString()),
                                            Text(
                                                snapshot.data![index].nickname),
                                            Text(snapshot.data![index].points
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
