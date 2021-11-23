import 'package:application/theming/myColors.dart';
import 'package:application/utils/userScore.dart';
import 'package:application/widgets/myButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  List<UserScore> scores = [
    UserScore(),
    UserScore(),
    UserScore(),
    UserScore(),
    UserScore(),
    UserScore(),
    UserScore(),
  ];

  @override
  Widget build(BuildContext context) {
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
              child: Expanded(
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
                              padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  onTap: () {},
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(scores[index].id.toString()),
                                      Text(scores[index].userName),
                                      Text(scores[index].score.toString()),
                                    ],
                                  ),
                                ),
                                // title: Text(scores[index].userName)),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            MyButton(buttonText: 'Kontynuuj', onPressed: () => {}),
            Expanded(
              child: Container(),
            ),
          ],
        ));
  }
}
