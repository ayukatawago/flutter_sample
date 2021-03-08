import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

///
class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text('AnimatedContainer Sample'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _selected ? 200.0 : 100.0,
            height: _selected ? 100.0 : 200.0,
            color: _selected ? Colors.red : Colors.blue,
            alignment:
                _selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
