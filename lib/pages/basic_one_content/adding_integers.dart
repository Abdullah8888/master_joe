import 'package:flutter/material.dart';

class AddingIntegers extends StatefulWidget {
  @override
  _AddingIntegersState createState() => _AddingIntegersState();
}

class _AddingIntegersState extends State<AddingIntegers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Adding Integers',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _showExample()
        ],
      ),
    );
  }

  Widget _showExample() {
    return Padding(
      padding: EdgeInsets.all(14.0),
      child: Material(
        elevation: 3,
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        shadowColor: Colors.black,
        child: SizedBox(
            height: 110.0,
            width: double.infinity,
            child: Image.asset(
              'images/example1.png',
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}