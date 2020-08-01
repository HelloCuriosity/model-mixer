import 'package:test/test.dart';

import 'package:model_mixer/providers/primitives/string_provider.dart';

void main() {
  test('test default', () {
    final generated = StringProvider().get();
    expect(String, generated.runtimeType);
    expect(true, generated.isNotEmpty);
    expect(1, generated.wordCount());
  });

  test('test input 0', () {
    final generated = StringProvider(numWords: 0).get();
    expect(String, generated.runtimeType);
    expect(true, generated.isNotEmpty);
    expect(1, generated.wordCount());
  });

  group("test input", () {
    for (int i = 1; i < 100; i++) {
      final generated = StringProvider(numWords: i).get();
      test('given: $i expected: $i', () {
        expect(String, generated.runtimeType);
        expect(true, generated.isNotEmpty);
        expect(i, generated.wordCount());
      });
    }
  });
}

extension StringExt on String {
  int wordCount() => this.split(' ').length;
}
