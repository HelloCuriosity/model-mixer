import 'dart:mirrors';

import 'package:model_mixer/model_mixer.dart';
import 'package:test/test.dart';

void main() {
  ModelMixer modelMixer = ModelMixer();

  test("test build", () {
    TestObject testObject = modelMixer.build(TestObject);
    expect(String, testObject.stringValue.runtimeType);
    expect(int, testObject.intValue.runtimeType);
  });

  group("test buildList", () {
    test("default", () {
      List<TestObject> list = modelMixer.buildList(TestObject);
      expect(10, list.length);
      list.forEach((testObject) {
        expect(String, testObject.stringValue.runtimeType);
        expect(int, testObject.intValue.runtimeType);
      });
    });

    for (int i = 1; i < 100; i++) {
      test('given: $i expected: $i', () {
        List<TestObject> list = modelMixer.buildList(TestObject, i);
        expect(i, list.length);
        list.forEach((testObject) {
          expect(String, testObject.stringValue.runtimeType);
          expect(int, testObject.intValue.runtimeType);
        });
      });
    }
  });

  group("test arguments", () {
    ClassMirror mirror = reflectClass(TestObject);

    test("test method", () {
      List<dynamic> arguments = ModelMixer.getArguments(mirror);
      arguments.verify();
    });

    test("test extension", () {
      List<dynamic> arguments = mirror.arguments();
      arguments.verify();
    });
  });
}

extension _ExpectExt on List<dynamic> {
  verify() {
    expect(2, this.length);
    expect(String, this[0].runtimeType);
    expect(int, this[1].runtimeType);
  }
}

class TestObject {
  TestObject(this.stringValue, this.intValue);

  final String stringValue;
  final int intValue;
}
