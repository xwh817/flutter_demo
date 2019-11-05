import 'package:flutter/material.dart';
import 'package:flutter_demo/hello/hello.dart';
import 'package:flutter_demo/home.dart';
import 'package:provider/provider.dart';

import 'my_model.dart';

class ProviderPage extends StatefulWidget {
  ProviderPage({Key key}) : super(key: key);

  @override
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Provider'),
        elevation: 4.0,
      ),
      body: Column(
        children: <Widget>[
          Text('${Provider.of<Counter>(context).count}'),
          RaisedButton(
            child: Text('Add'),
            onPressed: () {
              var counter = Provider.of<Counter>(context);
              counter.add();
            },
          ),
          RaisedButton(
            child: Text('Goto Other Page'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Hello()));
            },
          ),
        ],
      ),
    );
  }
}
