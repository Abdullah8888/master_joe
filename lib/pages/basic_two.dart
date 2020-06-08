import 'package:flutter/material.dart';

class BasicOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Basic two')),
      
    );
  }

  Widget _selectOperation() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Text(
          'Choose Operation',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}