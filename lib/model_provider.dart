import 'package:model_mixer/providers/date_time_provider.dart';
import 'package:model_mixer/providers/primitives/boolean_provider.dart';
import 'package:model_mixer/providers/primitives/double_provider.dart';
import 'package:model_mixer/providers/primitives/integer_provider.dart';
import 'package:model_mixer/providers/primitives/string_provider.dart';
import 'package:model_mixer/model_mixer_exception.dart';

class ModelProvider {
  static dynamic from(Type type) {
    switch (type) {
      case String:
        return StringProvider().get();
      case int:
        return IntegerProvider().get();
      case double:
        return DoubleProvider().get();
      case bool:
        return BooleanProvider().get();
      default:
        throw ModelMixerException("$type is not yet supported");
    }
  }
}

extension TypeExt on Type {
  dynamic getValue() => ModelProvider.from(this);
}
