import 'package:flutter/material.dart';

class AwesomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Awesome '),
      ),
      body: Center(
        child: Text(
          'I am Awesome!',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
