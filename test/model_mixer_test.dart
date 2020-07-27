import 'dart:mirrors';

import 'package:model_mixer/model_mixer.dart';
import 'package:test/test.dart';

void main() {
  ModelMixer modelMixer = ModelMixer();

  test("test build", () {
    TestObject testObject = modelMixer.build(TestObject);
    testObject.verify();
  });

  group("test buildList", () {
    test("default", () {
      List<TestObject> list = modelMixer.buildList(TestObject);
      expect(10, list.length);
      list.forEach((testObject) {
        testObject.verify();
      });
    });

    for (int i = 1; i < 100; i++) {
      test('given: $i expected: $i', () {
        List<TestObject> list = modelMixer.buildList(TestObject, i);
        expect(i, list.length);
        list.forEach((testObject) {
          testObject.verify();
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
    expect(3, this.length);
    expect(String, this[0].runtimeType);
    expect(int, this[1].runtimeType);
    expect(double, this[2].runtimeType);
  }
}

class TestObject {
  TestObject(this.stringValue, this.intValue, this.doubleValue);

  final String stringValue;
  final int intValue;
  final double doubleValue;
}

extension _TestObjectExt on TestObject {
  verify() {
    expect(String, this.stringValue.runtimeType);
    expect(int, this.intValue.runtimeType);
    expect(double, this.doubleValue.runtimeType);
  }
}
