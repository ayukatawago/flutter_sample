import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'animated_container.dart';
import 'expanded_column.dart';
import 'expanded_row.dart';
import 'fade_transition.dart';
import 'floating_action_button.dart';
import 'future_builder.dart';
import 'opacity.dart';
import 'page_view.dart';
import 'widget/platform_list_tile.dart';
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
    'FutureBuilder': () => FlutterBuilderScreen(),
    'FadeTransition': () => FadeTransitionScreen(),
    'FloatingActionButton': () => FloatingActionButtonScreen(),
    'PageView': () => PageViewScreen(),
  };

  PlatformListTile getListTile(String title) {
    return PlatformListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      onTap: () => {
        Navigator.push(
            context,
            platformPageRoute(
              context: context,
              builder: (_) => _widgetItemMap[title](),
            )
            // MaterialPageRoute(
            //   builder: (context) => _widgetItemMap[title](),
            // ),
            )
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final topAppBar = PlatformAppBar(
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

    return PlatformScaffold(
      appBar: topAppBar,
      body: makeBody,
    );
  }
}
