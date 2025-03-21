import 'package:flutter/material.dart';


class HeroAnimation extends StatefulWidget {
  HeroAnimation({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HeroAnimationState createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  Widget _greenRectangle() {
    return Container(
      width: 75,
      height: 75,
      color: Colors.green,
    );
  }

  Widget _detailPageRectangle() {
    return Container(
      width: 150,
      height: 150,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildDemoWidget(context),
    );
  }

  Widget buildDemoWidget(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: 'hero-rectangle',
                child: _greenRectangle(),
              ),
              onTap: () => _gotoDetailsPage(context),
            ),
            title: Text(
                'Tap on the green icon rectangle to analyze hero animation transition.'),
          ),
        ],
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          title: const Text('Detail Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child: _detailPageRectangle(),
              ),
              const SizedBox(height: 20),
              const Text(
                  'This is a place where you can see details about the icon tapped at the previous page.'),
            ],
          ),
        ),
      ),
    ));
  }
}
