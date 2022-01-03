import 'dart:math';

import 'package:application/utils/word.dart';
import 'package:flutter/material.dart';

class WordProvider with ChangeNotifier {
  List<Word> wordList = [];
  Word chosenWord = Word(-1, 'ERROR', 'ERROR', 'ERROR');

  void randomWord() {
    Random random = new Random();
    int randomNumber = random.nextInt(wordList.length);
    this.chosenWord = wordList[randomNumber];
  }

  void updateList(List<Word> wordList) {
    this.wordList = wordList;
  }
}
