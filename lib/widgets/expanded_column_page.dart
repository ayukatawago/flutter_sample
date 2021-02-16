import 'package:flutter/material.dart';

///
class ExpandedColumnSamplePage extends StatefulWidget {
  @override
  _ExpandedColumnSamplePageState createState() =>
      _ExpandedColumnSamplePageState();
}

class _ExpandedColumnSamplePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
