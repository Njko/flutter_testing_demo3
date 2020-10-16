# flutter_testing_demo3

A widget test demo project including previews.

## Example project

Based on example from Flutter website:
https://flutter.dev/docs/cookbook/testing/widget/introduction

Note:
In my_widget_test.dart a wrapper widget has been created to give a test context for the widget we want to test. Without this context, tests fail at determining an app configuration. Indeed, the widget we try to test does not start with a MaterialApp widget.

With this example, you can test widget individually from their MaterialApp context.

## VSCode Preview
https://pub.dev/packages/preview

This test project is also an example at using the Preview VSCode plugin. Basically it creates a MaterialApp that will pump the widget you want to preview.
Similarly to SwiftUI live previews, you have to write a PreviewProvider Widget with default parameters for the Widget you want the preview from.

