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
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Text("WidgetSamplePage"),
      ),
    );
  }
}
