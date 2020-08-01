import 'dart:mirrors';

import 'package:model_mixer/model_mixer.dart';
import 'package:test/test.dart';

void main() {
  final ModelMixer modelMixer = ModelMixer();

  test("test build", () {
    final TestObject testObject = modelMixer.build(TestObject);
    testObject.verify();
  });

  group("test buildList", () {
    test("default", () {
      final List<TestObject> list = modelMixer.buildList(TestObject);
      expect(10, list.length);
      for (var item in list) {
        item.verify();
      }
    });

    for (int i = 1; i < 100; i++) {
      test('given: $i expected: $i', () {
        final List<TestObject> list = modelMixer.buildList(TestObject, i);
        expect(i, list.length);
        for (var item in list) {
          item.verify();
        }
      });
    }
  });

  group("test arguments", () {
    final ClassMirror mirror = reflectClass(TestObject);

    test("test method", () {
      final List<dynamic> arguments = ModelMixer.getArguments(mirror);
      arguments.verify();
    });

    test("test extension", () {
      final List<dynamic> arguments = mirror.arguments();
      arguments.verify();
    });
  });
}

extension _ExpectExt on List<dynamic> {
  void verify() {
    expect(5, length);
    expect(String, this[0].runtimeType);
    expect(int, this[1].runtimeType);
    expect(double, this[2].runtimeType);
    expect(bool, this[3].runtimeType);
    expect(DateTime, this[4].runtimeType);
  }
}

class TestObject {
  TestObject(
    this.stringValue,
    this.intValue,
    this.doubleValue,
    this.booleanValue,
    this.dateTimeValue,
  );

  final String stringValue;
  final int intValue;
  final double doubleValue;
  final bool booleanValue;
  final DateTime dateTimeValue;
}

extension _TestObjectExt on TestObject {
  void verify() {
    expect(String, stringValue.runtimeType);
    expect(int, intValue.runtimeType);
    expect(double, doubleValue.runtimeType);
    expect(bool, booleanValue.runtimeType);
    expect(DateTime, dateTimeValue.runtimeType);
  }
}
