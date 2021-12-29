import 'dart:math';

import 'package:application/utils/word.dart';
import 'package:flutter/material.dart';

class WordProvider with ChangeNotifier {
  List<Word> wordList = [];
  Word chosenWord = Word(-1, 'ERROR', 'ERROR', 'ERROR');

  //WordProvider(this.wordList, this.chosenWord);

  void randomWord() {
    Random random = new Random();
    int randomNumber = random.nextInt(wordList.length);
    this.chosenWord = wordList[randomNumber];
    //notifyListeners();
    // print(this.chosenWord.riddle +
    //     ' ' +
    //     this.chosenWord.rightAnswer +
    //     ' ' +
    //     this.chosenWord.wrongAnswer);
    // print('//////////////////////////////');
  }

  void updateList(List<Word> wordList) {
    this.wordList = wordList;
    //notifyListeners();
    // wordList.forEach((element) {
    //   print(element.riddle +
    //       ' ' +
    //       element.rightAnswer +
    //       ' ' +
    //       element.wrongAnswer);
    // });
    // print('//////////////////////////////');
  }
}
