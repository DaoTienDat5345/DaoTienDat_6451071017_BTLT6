import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bai2/main.dart';

void main() {
  testWidgets('shows validation when username is empty', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextFormField), '   ');
    await tester.tap(find.text('Go to Profile'));
    await tester.pump();

    expect(find.text('Please enter a username'), findsOneWidget);
    expect(find.text('Profile Screen'), findsNothing);
  });

  testWidgets('navigates to profile with username argument', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextFormField), 'Alice');
    await tester.tap(find.text('Go to Profile'));
    await tester.pumpAndSettle();

    expect(find.text('Profile Screen'), findsOneWidget);
    expect(find.text('Username: Alice'), findsOneWidget);
  });
}
