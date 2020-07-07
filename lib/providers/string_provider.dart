library modelmixer;

import 'package:lipsum/lipsum.dart';

class StringProvider {
  StringProvider({this.numWords = 1});

  int numWords;

  String get() {
    return createWord(numWords: numWords);
  }
}

//Repository(this.contentful);
//
//final Client contentful;

//public class WordProvider implements Provider<String> {
//  int max, min;
//  public WordProvider() {
//    this(1,1);
//  }
//
//  public WordProvider(int count) {
//    this(count,count);
//  }
//
//  public WordProvider(int min, int max) {
//    this.min = min;
//    this.max = max;
//  }
//
//  @Override
//  public String get() {
//    return LoremIpsum.getInstance().getWords(min, max);
//  }
//}
