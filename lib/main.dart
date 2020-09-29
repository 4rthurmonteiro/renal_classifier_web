import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MaterialApp(
  title: 'Renal Classifier',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: HomePage(),
));