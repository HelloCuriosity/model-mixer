import 'dart:math';

import 'package:model_mixer/providers/provider.dart';
import 'package:model_mixer/providers/random_provider.dart';

class IntegerProvider implements Provider<int> {
  IntegerProvider({this.min = defaultMin, this.max = defaultMax, this.random}) {
    random ??= RandomProvider().get();
  }

  static const int defaultMin = 0;
  static const int defaultMax = 100000;
  int min, max;
  Random random;

  @override
  int get() => min + random.nextInt(max - min);
}
