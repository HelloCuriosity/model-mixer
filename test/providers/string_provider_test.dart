import 'package:test/test.dart';

import 'package:modelmixer/providers/string_provider.dart';

void main() {
  group('Test get()', () {
    test('default', () {
      var generated = StringProvider().get();
      expect(String, generated.runtimeType);
      expect(true, generated.isNotEmpty);
    });
  });
}
