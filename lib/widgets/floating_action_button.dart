import 'package:flutter/material.dart';

///
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: Center(
        child: Text(_message),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _message = 'Button is tapped';
          });
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(height: 50.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
