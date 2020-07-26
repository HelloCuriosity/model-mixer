import 'package:model_mixer/model_mixer_exception.dart';
import 'package:model_mixer/model_provider.dart';
import 'package:test/test.dart';

void main() {
  group("test from", () {
    test('supported providers', () {
      var string = ModelProvider.from(String);
      expect(String, string.runtimeType);
    });

    test('unsupported providers', () {
      List<Type> types = [int, double, bool];
      types.forEach((type) {
        expect(() => ModelProvider.from(type), throwsA(TypeMatcher<ModelMixerException>()));
      });
    });
  });
}
