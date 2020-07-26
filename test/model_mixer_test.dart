import 'package:model_mixer/model_mixer.dart';
import 'package:test/test.dart';

void main() {
  ModelMixer modelMixer = ModelMixer();

  test("test build", () {
    TestObject testObject = modelMixer.build(TestObject);
    expect(String, testObject.stringValue.runtimeType);
  });

  test("test arguments", () {
    TestObject testObject = modelMixer.build(TestObject);
    expect(String, testObject.stringValue.runtimeType);
  });
}

class TestObject {
  TestObject(this.stringValue);

  final String stringValue;
}
