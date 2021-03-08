import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

///
class PlatformListTile extends PlatformWidgetBase<Widget, ListTile> {
  /// Constructor
  PlatformListTile({Key key, this.contentPadding, this.title, this.onTap})
      : super(key: key);

  ///
  final EdgeInsetsGeometry contentPadding;

  ///
  final Widget title;

  ///
  final GestureTapCallback onTap;

  @override
  Widget createCupertinoWidget(BuildContext context) {
    return CupertinoListTile(
      contentPadding: contentPadding,
      title: title,
      onTap: onTap,
    );
  }

  @override
  ListTile createMaterialWidget(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding,
      title: title,
      onTap: onTap,
    );
  }
}
