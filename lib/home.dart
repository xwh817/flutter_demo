import 'package:flutter/material.dart';
import 'package:flutter_demo/provider/provider_page.dart';
import 'hello/hello.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProviderPage(),
    );
  }

}
