import 'dart:math';

import 'package:model_mixer/providers/provider.dart';

class RandomProvider implements Provider<Random> {
  RandomProvider({this.random}) {
    random ??= Random();
  }

  Random random;

  @override
  Random get() => random;
}
