import 'dart:convert';
import 'dart:html' hide File;
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:application/routes/approuter.gr.dart';
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

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
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
                child: Text('TRYB TRENINGOWY',
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
                  buttonText: 'zagadka #1',
                  onPressed: () async {
                    navigateToFirst(context);
                  },
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                    buttonText: 'zagadka #2',
                    onPressed: () {
                      navigateToSecond(context);
                    })),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                  buttonText: 'zagadka #3',
                  onPressed: () => {navigateToThird(context)},
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                  buttonText: 'zagadka #4',
                  onPressed: () => {navigateToFourth(context)},
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                  buttonText: 'powr??t',
                  onPressed: () => {navigateToMenu(context)},
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

void navigateToMenu(BuildContext context) {
  context.router.navigateNamed('/');
}

void navigateToFirst(BuildContext context) {
  context.router.push(FirstRiddle(riddleNumber: 1, trainingMode: 1));
}

void navigateToSecond(BuildContext context) {
  context.router.push(SecondRiddle(riddleNumber: 1, trainingMode: 1));
}

void navigateToThird(BuildContext context) {
  context.router.push(ThirdRiddle(riddleNumber: 1, trainingMode: 1));
}

void navigateToFourth(BuildContext context) {
  context.router.push(FourthRiddle(riddleNumber: 1, trainingMode: 1));
}
