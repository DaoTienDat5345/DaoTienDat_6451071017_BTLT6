import 'package:flutter_test/flutter_test.dart';

import 'package:bai3/main.dart';

void main() {
  testWidgets('Home opens Settings and Back returns Home', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Home Screen'), findsOneWidget);
    expect(find.text('Go to Settings'), findsOneWidget);

    await tester.tap(find.text('Go to Settings'));
    await tester.pumpAndSettle();

    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Back'), findsOneWidget);

    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();

    expect(find.text('Home Screen'), findsOneWidget);
    expect(find.text('Go to Settings'), findsOneWidget);
  });
}
