import 'dart:math';

import 'package:model_mixer/providers/random_provider.dart';
import 'package:test/test.dart';

void main() {
  test("test get", () {
    RandomProvider randomProvider = RandomProvider();
    expect(Random, randomProvider.get().runtimeType);
  });
}
