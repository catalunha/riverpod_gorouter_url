import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class Home extends _$Home {
  @override
  String? build() {
    return null;
  }

  void change(String value) {
    state = value;
  }
}

@riverpod
FutureOr<String> homeGet(Ref ref, String id) async {
  // Making a GET request to an endpoint
  return id;
}
