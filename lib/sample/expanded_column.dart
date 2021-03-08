import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

///
class ExpandedColumnScreen extends StatefulWidget {
  @override
  _ExpandedColumnScreenState createState() => _ExpandedColumnScreenState();
}

class _ExpandedColumnScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Expanded Column Sample'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100,
                child: Center(
                  child: Text('Expanded'),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
