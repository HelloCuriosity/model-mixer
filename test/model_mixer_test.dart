import 'package:model_mixer/model_mixer.dart';
import 'package:model_mixer/model_mixer_exception.dart';
import 'package:test/test.dart';

void main() {
  group("test build", () {
    ModelMixer modelMixer = ModelMixer();

    test("default providers", () {
      TestObject testObject = modelMixer.build(TestObject);
      expect(String, testObject.stringValue.runtimeType);
    });

    test("provider not supported", () {
      expect(() => modelMixer.build(UnknownProvider), throwsA(TypeMatcher<ModelMixerException>()));
    });
  });
}

class TestObject {
  TestObject(this.stringValue);

  final String stringValue;
}

// TODO: this can be removed after proper testing of ModelProvider.from
class UnknownProvider {
  UnknownProvider(this.stringValue, this.intValue, this.doubleValue);

  final String stringValue;
  final int intValue;
  final double doubleValue;
}
