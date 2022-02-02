
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'my_book_widget.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));
  });
}