import 'package:model_mixer/model_mixer_exception.dart';
import 'package:test/test.dart';

void main() {
  test("test exception", () {
    var message = "test message";
    ModelMixerException exception = ModelMixerException(message);
    expect("Mixer exception: $message", exception.toString());
  });
}
