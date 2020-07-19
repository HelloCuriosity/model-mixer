import 'package:test/test.dart';

import 'package:modelmixer/providers/string_provider.dart';

void main() {
  group('Test get()', () {
    test('default', () {
      var generated = StringProvider().get();
      expect(String, generated.runtimeType);
      expect(true, generated.isNotEmpty);
      expect(1, generated.wordCount());
    });

    // TODO: parameterized testing
    test('multiple words', () {
      var generated = StringProvider(numWords: 3).get();

      expect(String, generated.runtimeType);
      expect(true, generated.isNotEmpty);
      expect(3, generated.wordCount());
    });
  });
}

extension StringExt on String {
  int wordCount() => this.split(' ').length;
}
