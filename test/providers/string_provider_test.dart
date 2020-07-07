import 'package:test/test.dart';

import 'package:modelmixer/providers/string_provider.dart';

void main() {
  test('Test get()', () {
    StringProvider provider = StringProvider();

    expect(1, provider.get().length);
  });
}
