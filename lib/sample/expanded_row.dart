import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

///
class ExpandedRowScreen extends StatefulWidget {
  @override
  _ExpandedRowScreenState createState() => _ExpandedRowScreenState();
}

class _ExpandedRowScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Expanded Column Sample'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                height: 100,
                child: Center(
                  child: Text('Expanded 1'),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
                height: 100,
                child: Center(
                  child: Text('Expanded 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
