import 'package:flutter/material.dart';

///
class OpacitySamplePage extends StatefulWidget {
  /// Constructor
  OpacitySamplePage({Key key}) : super(key: key);

  @override
  _OpacitySamplePageState createState() => _OpacitySamplePageState();
}

class _OpacitySamplePageState extends State {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          visible = !visible;
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Opacity Sample'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Opacity(
                opacity: visible ? 1.0 : 0.0,
                child: const Text("Opacity Sample"),
              ),
              AnimatedOpacity(
                opacity: visible ? 1.0 : 0.0,
                duration: Duration(seconds: 2),
                child: const Text("AnimatedOpacity Sample"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
