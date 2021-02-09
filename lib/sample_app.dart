import 'package:flutter/material.dart';

import 'widgets/widget_sample_page.dart';

/// Sample Flutter App
class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WidgetSampleMainPage(title: 'Flutter Sample'),
    );
  }
}
