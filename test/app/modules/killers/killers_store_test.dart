import 'package:flutter_test/flutter_test.dart';
import 'package:deadbydaylighttapp/app/modules/killers/killers_store.dart';
 
void main() {
  late KillersStore store;

  setUpAll(() {
    store = KillersStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}