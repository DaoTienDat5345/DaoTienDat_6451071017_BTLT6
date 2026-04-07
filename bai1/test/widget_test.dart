import 'package:flutter_test/flutter_test.dart';

import 'package:bai1/app/my_app.dart';

void main() {
  testWidgets('navigates from Home to About using pushNamed', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Go to About'), findsOneWidget);

    await tester.tap(find.text('Go to About'));
    await tester.pumpAndSettle();

    expect(find.text('About'), findsOneWidget);
    expect(find.text('About our company'), findsOneWidget);
  });
}
