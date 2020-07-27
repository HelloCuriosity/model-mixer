import 'package:model_mixer/providers/primitives/integer_provider.dart';
import 'package:test/test.dart';

void main() {
  group("test get", () {
    test("test default", () {
      var generated = IntegerProvider().get();
      expect(int, generated.runtimeType);
      expect(true, generated >= IntegerProvider.defaultMin && generated < IntegerProvider.defaultMax);
    });

    var min = 15;
    var max = 2011;
    for (int i = 1; i < 100; i++) {
      var minInput = min + i;
      var maxInput = max + i;
      var generated = IntegerProvider(min: minInput, max: maxInput).get();
      test('int $generated is >= $minInput and less than $maxInput', () {
        expect(int, generated.runtimeType);
        expect(true, generated >= minInput && generated <= maxInput);
      });
    }
  });
}
