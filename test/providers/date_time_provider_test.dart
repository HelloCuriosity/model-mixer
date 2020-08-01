import 'package:model_mixer/providers/date_time_provider.dart';
import 'package:test/test.dart';

void main() {
  test('test get', () {
    final generated = DateTimeProvider().get();
    expect(DateTime, generated.runtimeType);
  });
}
