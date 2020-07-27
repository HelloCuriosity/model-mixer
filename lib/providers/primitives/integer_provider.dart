import 'dart:math';

import 'package:model_mixer/providers/provider.dart';
import 'package:model_mixer/providers/random_provider.dart';

class IntegerProvider implements Provider<int> {
  IntegerProvider({this.min = 0, this.max = 100000, this.random = null}) {
    random ??= RandomProvider().get();
  }

  int min, max;
  Random random;

  @override
  int get() {
    return min + random.nextInt(max);
  }
}
