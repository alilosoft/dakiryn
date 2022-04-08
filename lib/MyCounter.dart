import 'package:flutter/material.dart';
class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color:Colors.amber
        ),
    child: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _incrementCounter,
      child: Center(
        child: Text(
          '$_counter',
              style: Theme.of(context).textTheme.headline4,
        ),

      ),
    )
    );




  }
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
}
