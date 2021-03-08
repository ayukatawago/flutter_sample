import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

///
class OpacityScreen extends StatefulWidget {
  @override
  _OpacityScreenState createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _visible = !_visible;
        });
      },
      child: PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text('Opacity Sample'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Opacity(
                opacity: _visible ? 1.0 : 0.0,
                child: const Text("Opacity Sample"),
              ),
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
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
