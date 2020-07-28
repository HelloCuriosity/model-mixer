import 'dart:mirrors';

import 'package:model_mixer/model_provider.dart';

class ModelMixer {
  ModelMixer();

  T build<T>(dynamic clazz) {
    final ClassMirror mirror = reflectClass(clazz);
    final arguments = mirror.arguments();
    final InstanceMirror instance = mirror.newInstance(const Symbol(''), arguments);
    return instance.reflectee;
  }

  List<T> buildList<T>(dynamic clazz, [int size = 10]) {
    final List<T> list = <T>[];
    for (int i = 0; i < size; i++) {
      list.add(build(clazz));
    }
    return list;
  }

  static List<dynamic> getArguments(ClassMirror mirror) {
    final List<dynamic> arguments = <dynamic>[];
    mirror.declarations.forEach((key, value) {
      if (value is VariableMirror) {
        final type = value.type.reflectedType;
        arguments.add(type.getValue());
      }
    });
    return arguments;
  }
}

extension MirrorExt on ClassMirror {
  dynamic arguments() => ModelMixer.getArguments(this);
}
