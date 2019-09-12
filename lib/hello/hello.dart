import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hello'),
        elevation: 4.0,
      ),
      body: Center(child: Text('Hello Flutter')),
    );
  }
}