import 'dart:math';

import 'package:model_mixer/providers/provider.dart';
import 'package:model_mixer/providers/random_provider.dart';

class BooleanProvider implements Provider<bool> {
  BooleanProvider({this.random = null}) {
    random ??= RandomProvider().get();
  }

  Random random;

  @override
  bool get() => random.nextBool();
}
