import 'dart:math';

import 'package:application/utils/word.dart';

class WordProvider {
  List<Word> wordList;
  Word chosenWord;

  WordProvider(this.wordList, this.chosenWord);

  void randomWord() {
    Random random = new Random();
    int randomNumber = random.nextInt(wordList.length);
    this.chosenWord = wordList[randomNumber];
  }
}
