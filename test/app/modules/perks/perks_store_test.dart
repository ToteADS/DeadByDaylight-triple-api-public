import 'package:flutter_test/flutter_test.dart';
import 'package:deadbydaylighttapp/app/modules/perks/perks_store.dart';
 
void main() {
  late PerksStore store;

  setUpAll(() {
    store = PerksStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}