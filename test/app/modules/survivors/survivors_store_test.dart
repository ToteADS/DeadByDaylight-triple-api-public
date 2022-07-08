import 'package:flutter_test/flutter_test.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/survivors_store.dart';
 
void main() {
  late SurvivorsStore store;

  setUpAll(() {
    store = SurvivorsStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}