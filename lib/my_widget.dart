import 'package:flutter/widgets.dart';
import 'package:preview/preview.dart';

class MyWidget extends StatelessWidget {
  final String title;
  final String message;

  const MyWidget({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Text(message),
      ],
    );
  }
}

class WidgetPreview extends PreviewProvider {
  @override
  List<Preview> get previews {
    return [
      Preview(
        frame: Frames.iphone8,
        child: MyWidget(
          title: 'Title',
          message: 'Message',
        ),
      ),
      Preview(
        frame: Frames.iphone5,
        child: MyWidget(
          title: 'Title',
          message: 'Message',
        ),
      ),
    ];
  }
}
