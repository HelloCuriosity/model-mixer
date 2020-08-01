import 'package:model_mixer/providers/primitives/double_provider.dart';
import 'package:test/test.dart';

void main() {
  group("test get", () {
    test("test default", () {
      final generated = DoubleProvider().get();
      expect(double, generated.runtimeType);
      expect(true, generated >= DoubleProvider.defaultMin && generated < DoubleProvider.defaultMax);
    });

    const double min = 15;
    const double max = 2011;
    for (int i = 1; i < 100; i++) {
      final minInput = min + i;
      final maxInput = max + i;
      final generated = DoubleProvider(min: minInput, max: maxInput).get();
      test('double $generated is >= $minInput and less than $maxInput', () {
        expect(double, generated.runtimeType);
        expect(true, generated >= minInput && generated <= maxInput);
      });
    }
  });
}
