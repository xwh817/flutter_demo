import 'package:flutter/material.dart';
import 'package:flutter_demo/home.dart';
import 'package:flutter_demo/provider/provider_page.dart';
import 'package:provider/provider.dart';

import 'provider/my_model.dart';

void main() {
  runApp(ChangeNotifierProvider<Counter>.value(
    value: Counter(),
    child: Home(),
  ));
}
