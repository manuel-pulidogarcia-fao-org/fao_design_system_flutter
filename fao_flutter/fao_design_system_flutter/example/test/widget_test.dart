import 'package:flutter_test/flutter_test.dart';
import 'package:example/main.dart';

void main() {
  testWidgets('App loads and shows FAO Design System title', (WidgetTester tester) async {
    await tester.pumpWidget(const FaoShowcaseApp());
    await tester.pumpAndSettle(const Duration(seconds: 2));
    expect(find.text('FAO Design System'), findsOneWidget);
  });
}
