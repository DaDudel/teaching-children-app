import 'dart:convert';
import 'dart:html' hide File;
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:application/routes/approuter.gr.dart';
import 'package:application/utils/userScore.dart';
import 'package:application/utils/word.dart';
import 'package:application/utils/wordProvider.dart';
import 'package:application/widgets/myButton.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:application/theming/myColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // firebase_storage.FirebaseStorage storage =
  //     firebase_storage.FirebaseStorage.instance;
  // firebase_storage.Reference ref =
  //     firebase_storage.FirebaseStorage.instance.ref('/slowka.csv');

  void downloadCSV() async {
    String downloadAdress =
        'https://raw.githubusercontent.com/DaDudel/3d-labs/main/slowka.csv';
    final response = await http.get(Uri.parse(downloadAdress));

    List<Word> words2 = [];

    response.body.split('\n').forEach((element) {
      List<String> verse = element.split(';');
      if (verse.length == 4) {
        words2.add(Word(int.parse(verse[0]), verse[1], verse[2], verse[3]));
      }
    });

    print(words2[0].riddle);
  }

  Future<List<Word>> getTheList() async {
    String downloadAdress =
        'https://raw.githubusercontent.com/DaDudel/slowka-csv/main/slowka.csv';
    final response = await http.get(Uri.parse(downloadAdress));

    List<Word> words2 = [];

    response.body.split('\n').forEach((element) {
      List<String> verse = element.split(';');
      if (verse.length == 4) {
        verse[3].replaceAll('\n', '');
        verse[3].replaceAll(' ', '');
        words2.add(Word(int.parse(verse[0]), verse[1], verse[2], verse[3]));
      }
    });

    return words2;
  }

  @override
  Widget build(BuildContext context) {
    WordProvider wordProvider = Provider.of<WordProvider>(context);

    return Container(
      color: MyColors().myAmber,
      child: Center(
        child: Column(
          children: [
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text('Naucz się ortografii!',
                    style: GoogleFonts.mcLaren(
                      fontSize: 64,
                    )),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                  buttonText: 'start',
                  onPressed: () async {
                    wordProvider.updateList(await getTheList());
                    wordProvider.randomWord();
                    navigateToRiddles(context);
                  },
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                    buttonText: 'trening',
                    onPressed: () async {
                      wordProvider.updateList(await getTheList());
                      wordProvider.randomWord();
                      navigateToTraining(context);
                    })),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                  buttonText: 'ranking',
                  onPressed: () => {navigateToRanking(context)},
                )),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToRiddles(BuildContext context) {
  Random random = new Random();
  int randomNumber = random.nextInt(4);

  switch (randomNumber) {
    case 0:
      {
        context.router.push(FirstRiddle(riddleNumber: 1));
      }
      break;
    case 1:
      {
        context.router.push(SecondRiddle(riddleNumber: 1));
      }
      break;
    case 2:
      {
        context.router.push(ThirdRiddle(riddleNumber: 1));
      }
      break;
    case 3:
      {
        context.router.push(FourthRiddle(riddleNumber: 1));
      }
      break;
  }
}

void navigateToRanking(BuildContext context) {
  context.router.pushNamed('/ranking-screen');
}

void navigateToTraining(BuildContext context) {
  context.router.push(Training());
}
