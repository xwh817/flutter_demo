import 'package:flutter/material.dart';
import 'package:flutter_demo/provider/my_model.dart';
import 'package:provider/provider.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int providerValue = Provider.of<Counter>(context).count;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hello'),
        elevation: 4.0,
      ),
      body: Center(child: Text('Hello Flutter \n providerValue is $providerValue')),
    );
  }
}