library modelmixer;

import 'package:lipsum/lipsum.dart';
import 'package:modelmixer/providers/provider.dart';

class StringProvider implements Provider<String> {
  StringProvider({this.numWords = defaultValue});

  static const int defaultValue = 1;
  int numWords;

  @override
  String get() {
    if (numWords == 0) {
      print('$numWords is not a valid input, reverting to default $defaultValue');
      numWords = defaultValue;
    }
    return createWord(numWords: numWords);
  }
}
