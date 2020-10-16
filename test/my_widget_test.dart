import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_demo3/my_widget.dart';

class TestContextWidget extends StatelessWidget {
  final Widget child;

  TestContextWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.ltr, child: child);
  }
}

void main() {
  setUp(() {});
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(TestContextWidget(
        child: MyWidget(
      title: 'T',
      message: 'M',
    )));

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
