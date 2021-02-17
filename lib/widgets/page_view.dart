import 'package:flutter/material.dart';

///
class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.red,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                if (_pageController.hasClients) {
                  _pageController.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: const Text('Next'),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                if (_pageController.hasClients) {
                  _pageController.animateToPage(
                    0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.bounceInOut,
                  );
                }
              },
              child: const Text('Previous'),
            ),
          ),
        ),
      ],
    );
  }
}
