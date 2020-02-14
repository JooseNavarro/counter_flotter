import 'package:counter/page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatelessWidget {

  @override
  Widget build( BuildContext context ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}