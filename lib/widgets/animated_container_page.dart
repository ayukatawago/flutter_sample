import 'package:flutter/material.dart';

///
class AnimatedContainerSamplePage extends StatefulWidget {
  /// Constructor
  AnimatedContainerSamplePage({Key key}) : super(key: key);

  @override
  _AnimatedContainerSamplePageState createState() =>
      _AnimatedContainerSamplePageState();
}

class _AnimatedContainerSamplePageState extends State {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Sample'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.red : Colors.blue,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
