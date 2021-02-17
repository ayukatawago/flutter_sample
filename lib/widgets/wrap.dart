import 'package:flutter/material.dart';

///
class WrapScreen extends StatefulWidget {
  @override
  _WrapScreenState createState() => _WrapScreenState();
}

class _WrapScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Sample'),
      ),
      body: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        direction: Axis.horizontal,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('AH'),
            ),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('ML'),
            ),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('HM'),
            ),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('JL'),
            ),
            label: Text('Laurens'),
          ),
        ],
      ),
    );
  }
}
