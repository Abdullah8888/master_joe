import 'package:flutter/material.dart';
import 'package:master_joe/pages/basic_one_content/adding_integers.dart';
import 'package:master_joe/pages/basic_one_content/tens_and_unit.dart';

class BasicOneContent extends StatefulWidget {
  @override
  _BasicOneContentState createState() => _BasicOneContentState();
}

class _BasicOneContentState extends State<BasicOneContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Basic One Content',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _showContentOne(context),
          _showContentTwo(context)
          

        ],
      ),
    );
  }

  Widget _showContentOne(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 100, left: 20, right: 20),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.yellow,
          elevation: 10,
          child: Text(
            'Adding of two integers',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black87),
          ),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddingIntegers()
          )
          ),
        ),
      ),
    );
  }

  Widget _showContentTwo(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.yellow,
          elevation: 10,
          child: Text(
            'Tens and Unit',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black87),
          ),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TensAndUnit()
          )
          ),
        ),
      ),
    );
  }


}