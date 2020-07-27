import 'package:model_mixer/providers/primitives/double_provider.dart';
import 'package:test/test.dart';

void main() {
  group("test get", () {
    test("test default", () {
      var generated = DoubleProvider().get();
      expect(double, generated.runtimeType);
      expect(true, generated >= DoubleProvider.defaultMin && generated < DoubleProvider.defaultMax);
    });

    double min = 15;
    double max = 2011;
    for (int i = 1; i < 100; i++) {
      var minInput = min + i;
      var maxInput = max + i;
      var generated = DoubleProvider(min: minInput, max: maxInput).get();
      test('double $generated is >= $minInput and less than $maxInput', () {
        expect(double, generated.runtimeType);
        expect(true, generated >= minInput && generated <= maxInput);
      });
    }
  });
}
