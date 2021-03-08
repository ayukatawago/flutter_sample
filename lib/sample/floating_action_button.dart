import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// TODO: consider iOS later.
class FloatingActionButtonScreen extends StatefulWidget {
  @override
  _FloatingActionButtonScreenState createState() =>
      _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState
    extends State<FloatingActionButtonScreen> {
  var _message = 'Press the button below';

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Floating Action Button'),
      ),
      body: Center(
        child: Text(_message),
      ),
      material: (_, __) => MaterialScaffoldData(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _message = 'Button is tapped';
            });
          },
          child: const Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
        bottomNavBar: BottomAppBar(
          color: Colors.yellow,
          child: Container(height: 50.0),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      cupertino: (_, __) => CupertinoPageScaffoldData(
        bottomTabBar: CupertinoTabBar(
          backgroundColor: Colors.yellow,
          items: [
            BottomNavigationBarItem(
              icon: Text('tab 1'),
            ),
            BottomNavigationBarItem(
              icon: Text('tab 2'),
            ),
          ],
        ),
      ),
    );
  }
}
