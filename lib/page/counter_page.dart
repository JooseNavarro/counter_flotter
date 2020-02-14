import 'package:flutter/material.dart';

const darkColor = Color(0xff191919);

class CounterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CounterStatePage();
  }
}

class _CounterStatePage extends State<CounterPage> { 

  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Counter', style: TextStyle(fontSize: 30)),
          Text('Result: $_counter', style: TextStyle(fontSize: 25, color: darkColor))
        ],
      ),
      ),
      floatingActionButton: _increment(),
    );
  }

  Widget _appBar() {
    return AppBar( title: Center(child: Text('Counter App')), backgroundColor: darkColor, );
  }

  Widget _increment() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30 ),
        FloatingActionButton( child: Icon( Icons.exposure_zero ), backgroundColor: darkColor, onPressed: ()=> setState(()=> _counter = 0) ),
        Expanded(child: SizedBox(),),
        FloatingActionButton( child: Icon( Icons.remove ), backgroundColor: darkColor, onPressed: ()=> setState(()=> _counter--) ),
        FloatingActionButton( child: Icon( Icons.add ), backgroundColor: darkColor, onPressed: ()=> setState(()=> _counter++) ),
      ],
    );
  }
}