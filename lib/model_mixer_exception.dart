class ModelMixerException extends Error {
  ModelMixerException(this.message);

  final String message;

  @override
  String toString() => "Mixer exception: $message";
}
