import 'package:flutter/material.dart';
import 'package:foo_deliver/pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const FooDeliver(),
    theme: ThemeData(fontFamily: 'Ubuntu'),
  ));
}

