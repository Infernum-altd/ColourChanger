import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:color_changer/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    const Key key = Key('homepage');

    const HomePage widget = HomePage(key: key);

    await tester.pumpWidget(widget);

    final HomePage homePage = widget.createState() as HomePage;

    expect(homePage._didInitState, isTrue);

    //final _HomePageState widget = tester.state(find.byType(_HomePageState);

    /*final startColour = find.byElementType(Container);

    await tester.tap(find.text("Hey there"));

    final actualColour = find.byElementType(Container);

    expect(actualColour, startColour);*/
  });
}
