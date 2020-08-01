import 'package:model_mixer/providers/primitives/boolean_provider.dart';
import 'package:test/test.dart';

void main() {
  test('test get', () {
    final generated = BooleanProvider().get();
    expect(bool, generated.runtimeType);
  });
}
