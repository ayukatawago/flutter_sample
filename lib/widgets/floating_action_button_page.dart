import 'package:flutter/material.dart';

///
class FloatingActionButtonPage extends StatefulWidget {
  @override
  _FloatingActionButtonPageState createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
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
