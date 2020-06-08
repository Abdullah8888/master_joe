import 'package:flutter/material.dart';
import 'package:master_joe/pages/basic_one_content.dart';

class BasicOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Basic One',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _selectOperation(),
          _showAdditionBtn(context),
          _showSubtractionBtn(),
          _showMultiplicationBtn(),
          _showDivisionBtn(),

        ],
      ),
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

  Widget _showAdditionBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.yellow,
          elevation: 10,
          child: Text(
            '+',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Colors.black87),
          ),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BasicOneContent()
          )
          ),
        ),
      ),
    );
  }

  Widget _showSubtractionBtn() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.yellow,
          elevation: 10,
          child: Text(
            '-',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Colors.black87),
          ),
          onPressed: () => {},
        ),
      ),
    );
  }

  Widget _showMultiplicationBtn() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.yellow,
          elevation: 10,
          child: Text(
            'x',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Colors.black87),
          ),
          onPressed: () => {},
        ),
      ),
    );
  }

  Widget _showDivisionBtn() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.yellow,
          elevation: 10,
          child: Text(
            '/',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Colors.black87),
          ),
          onPressed: () => {},
        ),
      ),
    );
  }
}
