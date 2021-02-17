import 'package:flutter/material.dart';

import 'animated_container.dart';
import 'expanded_column.dart';
import 'expanded_row.dart';
import 'fade_transition.dart';
import 'floating_action_button.dart';
import 'flutter_builder.dart';
import 'opacity.dart';
import 'page_view.dart';
import 'wrap.dart';

/// Widget sample page
class WidgetSampleHomeScreen extends StatefulWidget {
  /// Constructor
  WidgetSampleHomeScreen({Key key, this.title}) : super(key: key);

  /// Title
  final String title;

  @override
  _WidgetSampleHomeScreenState createState() => _WidgetSampleHomeScreenState();
}

class _WidgetSampleHomeScreenState extends State<WidgetSampleHomeScreen> {
  final _widgetItemMap = <String, Object Function()>{
    'Expanded Column': () => ExpandedColumnScreen(),
    'Expanded Row': () => ExpandedRowScreen(),
    'Wrap': () => WrapScreen(),
    'AnimatedContainer': () => AnimatedContainerScreen(),
    'Opacity': () => OpacityScreen(),
    'FlutterBuilder': () => FlutterBuilderScreen(),
    'FadeTransition': () => FadeTransitionScreen(),
    'FloatingActionButton': () => FloatingActionButtonScreen(),
    'PageView': () => PageViewScreen(),
  };

  @override
  Widget build(BuildContext context) {
    final topAppBar = AppBar(
      backgroundColor: Colors.green,
      title: Text(widget.title),
    );

    final widgetList = _widgetItemMap.keys.map(getListTile).toList();

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          return widgetList[index];
        },
      ),
    );

    return Scaffold(
      appBar: topAppBar,
      body: makeBody,
    );
  }

  ListTile getListTile(String title) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _widgetItemMap[title]()),
        )
      },
    );
  }
}
