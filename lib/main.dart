import 'dart:async';
import 'package:master_joe/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mathematics',
      home: Scaffold(
        body: RootPage(),
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  final FlutterTts flutter = FlutterTts();

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final _usernameController = TextEditingController();
  //final _scaffodKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   // Add Your Code here.
    //   //_usernameController.clear();
      
    // });
    _speak('Hi little kid, You can call me master joe, please enter your name');
    super.initState();
   
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    // setState(() {
    //   _usernameController.clear();
    // });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Add Your Code here.
      _usernameController.clear();
    });

    super.deactivate();
    //
  }

  void startTimer() {
    Timer(Duration(seconds: 3), () {
      //navigateUser(); //It will redirect  after 3 seconds
    });
  }

  void _done(BuildContext context, String username) {
    if (username.isEmpty) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Please enter your name'),
        duration: Duration(seconds: 1),
      ));
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(kidName: username,
        )),
      );
    }
  }

  Future _speak(String text) async {
    print("the test is " + text);
    print("the test is $text");
    print(await widget.flutter.getLanguages);
    await widget.flutter.setLanguage("en-US");
    await widget.flutter.setVoice("en-us-x-sfg#male_1-local");
    await widget.flutter.setPitch(1);
    await widget.flutter.setSpeechRate(0.5);
    await widget.flutter.setVolume(1.0);
    await widget.flutter.speak(text);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _usernameController.dispose();
    widget.flutter.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 250.0),
        child: Column(
          children: <Widget>[
            //Texfield
            Padding(
              padding: EdgeInsets.only(
                  top: 0, bottom: 15.0, left: 20.0, right: 20.0),
              child: Material(
                shadowColor: Colors.black87,
                borderRadius: BorderRadius.circular(10),
                elevation: 5,
                child: TextField(
                  controller: _usernameController,
                  //obscureText: true, for password
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Enter your name",
                    // hintStyle: kHin
                  ),
                ),
              ),
            ),

            //Done Button
            Padding(
                padding: EdgeInsets.only(top: 0, left: 20.0, right: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    elevation: 7,
                    color: Colors.white,
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      _done(context, _usernameController.text);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )),
          ],
        ));
  }
}
