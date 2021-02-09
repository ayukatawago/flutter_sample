import 'package:flutter/material.dart';

/// Widget sample page
class WidgetSampleMainPage extends StatefulWidget {
  /// Constructor
  WidgetSampleMainPage({Key key, this.title}) : super(key: key);

  /// Title
  final String title;

  @override
  _WidgetSampleMainPageState createState() => _WidgetSampleMainPageState();
}

class _WidgetSampleMainPageState extends State<WidgetSampleMainPage> {
  @override
  Widget build(BuildContext context) {
    final topAppBar = AppBar(
      backgroundColor: Colors.green,
      title: Text(widget.title),
    );

    final widgetsList = [
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        title: Text(
          "Test",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ];

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widgetsList.length,
        itemBuilder: (context, index) {
          return widgetsList[index];
        },
      ),
    );

    return Scaffold(
      appBar: topAppBar,
      body: makeBody,
    );
  }
}
