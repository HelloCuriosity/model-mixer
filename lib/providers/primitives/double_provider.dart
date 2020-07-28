import 'dart:math';

import 'package:model_mixer/providers/provider.dart';
import 'package:model_mixer/providers/random_provider.dart';

class DoubleProvider implements Provider<double> {
  DoubleProvider({this.min = defaultMin, this.max = defaultMax, this.random}) {
    random ??= RandomProvider().get();
  }

  static const double defaultMin = 0;
  static const double defaultMax = 100000;
  double min, max;
  Random random;

  @override
  double get() => random.nextDouble() * (max - min) + min;
}
