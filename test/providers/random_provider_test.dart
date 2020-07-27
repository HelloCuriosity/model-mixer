import 'dart:math';

import 'package:model_mixer/providers/random_provider.dart';
import 'package:test/test.dart';

void main() {
  test("test get", () {
    var random = Random();
    RandomProvider randomProvider = RandomProvider(random: random);
    expect(random, randomProvider.get());
  });
}
