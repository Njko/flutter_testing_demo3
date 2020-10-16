
import 'package:flutter/widgets.dart';
import 'package:preview/preview.dart';

void main() {
  runApp(_PreviewApp());
}

class _PreviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreviewPage(
      child: Text('Select a file from /lib folder to see the preview 👀'),
    );
  }
}
  