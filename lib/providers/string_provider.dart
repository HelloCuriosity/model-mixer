library modelmixer;

import 'package:lipsum/lipsum.dart';

class StringProvider {
  StringProvider({this.numWords = 1});

  int numWords;

  String get() {
    return createWord(numWords: numWords);
  }
}
