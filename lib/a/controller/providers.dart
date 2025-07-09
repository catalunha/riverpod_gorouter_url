import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class A extends _$A {
  @override
  String? build() {
    return null;
  }

  void change(String value) {
    state = value;
  }
}
