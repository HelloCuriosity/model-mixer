import 'dart:math';

import 'package:model_mixer/providers/provider.dart';
import 'package:model_mixer/providers/random_provider.dart';

class DateTimeProvider implements Provider<DateTime> {
  DateTimeProvider({this.random}) {
    random ??= RandomProvider().get();
  }

  Random random;
  final int _max = 100000;

  @override
  DateTime get() => DateTime.fromMillisecondsSinceEpoch(random.nextInt(_max));
}
