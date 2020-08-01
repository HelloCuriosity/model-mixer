import 'package:model_mixer/model_mixer_exception.dart';
import 'package:model_mixer/model_provider.dart';
import 'package:test/test.dart';

void main() {
  group("test from", () {
    test('supported providers', () {
      final List<Type> types = [String, int, double];
      for (var type in types) {
        final generated = ModelProvider.from(type);
        expect(type, generated.runtimeType);
      }

      final string = ModelProvider.from(String);
      expect(String, string.runtimeType);
    });

    test('unsupported providers', () {
      expect(() => ModelProvider.from(null), throwsA(TypeMatcher<ModelMixerException>()));
    });
  });
}
