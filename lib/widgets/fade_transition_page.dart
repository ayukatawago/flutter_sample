import 'package:flutter/material.dart';

///
class FadeTransitionSamplePage extends StatefulWidget {
  @override
  _FadeTransitionSamplePageState createState() =>
      _FadeTransitionSamplePageState();
}

class _FadeTransitionSamplePageState extends State<FadeTransitionSamplePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _animation,
      child: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
