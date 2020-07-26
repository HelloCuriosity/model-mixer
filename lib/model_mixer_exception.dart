class ModelMixerException extends Error {
  ModelMixerException(this.message);

  final String message;

  String toString() => "Mixer exception: $message";
}
