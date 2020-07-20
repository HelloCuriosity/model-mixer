import 'dart:mirrors';

import 'package:model_mixer/model_provider.dart';

class ModelMixer {
  ModelMixer();

  T build<T>(dynamic clazz) {
    ClassMirror mirror = reflectClass(clazz);
    var arguments = mirror.arguments();
    InstanceMirror instance = mirror.newInstance(const Symbol(''), arguments);
    return instance.reflectee;
  }

  static List<dynamic> getArguments(ClassMirror mirror) {
    List<dynamic> arguments = List<dynamic>();
    mirror.declarations.forEach((key, value) {
      if (value is VariableMirror) {
        var type = value.type.reflectedType;
        arguments.add(type.getValue());
      }
    });
    return arguments;
  }
}

extension MirrorExt on ClassMirror {
  dynamic arguments() => ModelMixer.getArguments(this);
}
