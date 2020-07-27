import 'package:model_mixer/providers/primitives/integer_provider.dart';
import 'package:model_mixer/providers/primitives/string_provider.dart';
import 'package:model_mixer/model_mixer_exception.dart';

class ModelProvider {
  static dynamic from(Type type) {
    switch (type) {
      case String:
        return StringProvider().get();
        break;
      case int:
        return IntegerProvider().get();
      default:
        throw ModelMixerException("$type is not yet supported");
        break;
    }
  }
}

extension TypeExt on Type {
  dynamic getValue() => ModelProvider.from(this);
}
