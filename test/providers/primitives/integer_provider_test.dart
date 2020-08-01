import 'package:model_mixer/providers/primitives/integer_provider.dart';
import 'package:test/test.dart';

void main() {
  group("test get", () {
    test("test default", () {
      final generated = IntegerProvider().get();
      expect(int, generated.runtimeType);
      expect(true, generated >= IntegerProvider.defaultMin && generated < IntegerProvider.defaultMax);
    });

    const int min = 15;
    const int max = 2011;
    for (int i = 1; i < 100; i++) {
      final minInput = min + i;
      final maxInput = max + i;
      final generated = IntegerProvider(min: minInput, max: maxInput).get();
      test('int $generated is >= $minInput and less than $maxInput', () {
        expect(int, generated.runtimeType);
        expect(true, generated >= minInput && generated <= maxInput);
      });
    }
  });
}
