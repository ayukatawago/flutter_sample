import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'sample/widget_sample_home.dart';

/// Sample Flutter App
class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Flutter Sample',
      material: (_, __) => MaterialAppData(
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
      home: WidgetSampleHomeScreen(title: 'Flutter Sample'),
    );
  }
}
