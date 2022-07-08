
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';

main() {
  group('KillerDetailsPage', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
     
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}