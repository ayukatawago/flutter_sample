import 'package:flutter/material.dart';

import 'animated_container_page.dart';
import 'expanded_column_page.dart';
import 'expanded_row_page.dart';
import 'opacity_page.dart';
import 'wrap_page.dart';

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
  final _widgetItemMap = <String, Object Function()>{
    'Expanded Column': () => ExpandedColumnSamplePage(),
    'Expanded Row': () => ExpandedRowSamplePage(),
    'Wrap': () => WrapSamplePage(),
    'AnimatedContainer': () => AnimatedContainerSamplePage(),
    'Opacity': () => OpacitySamplePage(),
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
