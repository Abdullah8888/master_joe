import 'package:flutter/material.dart';
import 'package:master_joe/pages/basic_one.dart';
//import 'package:master_joe/shared/virtual_teacher.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomePage extends StatefulWidget {
  //final FlutterTts flutter = FlutterTts();
  //final List<Todo> todos;
  final String kidName;
  final FlutterTts _flutter = FlutterTts();

  HomePage({Key key, @required this.kidName}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    String name = widget.kidName;
    print('Welcome Hoe $name');
    _speak('Welcome $name');
    super.initState();
  }

  void ss() {
    //Sample.df().
  }

  Future _speak(String text) async {
    print("the test is " + text);
    print("the test is $text");
    print(await widget._flutter.getLanguages);
    await widget._flutter.setLanguage("en-US");
    await widget._flutter.setVoice("en-us-x-sfg#male_1-local");
    await widget._flutter.setPitch(1);
    await widget._flutter.setSpeechRate(0.5);
    await widget._flutter.setVolume(1.0);
    await widget._flutter.speak(text);
  }

@override
  void dispose() {
    // TODO: implement dispose
    widget._flutter.stop();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Mathematics for Kids'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // we gonna have hearder here
            _userAccountDrawerHeader(),
            // we gonna construct the body here
            _showHompageIcon(),
            // daily challenge
            _dailyChallenge(),
            //coins
            _coins(),
          ],
        ),
      ),
      //The body
      body: ListView(
        children: <Widget>[
          _selectYourLevel(),
          _showBasicOneBtn(context),
          _showBasicTwoBtn(),
          _showBasicThreeBtn(),
        ],
      ),
    );
  }

  Widget _selectYourLevel() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Text(
          'Select your class',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _showBasicOneBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.yellow,
          elevation: 10,
          child: Text(
            'Basic One',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 19, color: Colors.teal),
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BasicOne())),
        ),
      ),
    );
  }

  Widget _showBasicTwoBtn() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.red,
          elevation: 10,
          child: Text(
            'Basic Two',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 19,
                color: Colors.black87),
          ),
          onPressed: () => {},
        ),
      ),
    );
  }

  Widget _showBasicThreeBtn() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 70,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.purple,
          elevation: 10,
          child: Text(
            'Basic Three',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 19, color: Colors.white),
          ),
          onPressed: () => {},
        ),
      ),
    );
  }

  Widget _userAccountDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('Jimoh Babatunde'),
      accountEmail: Text('abd@gmail.com'),
      currentAccountPicture: GestureDetector(
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(color: Colors.pink),
    );
  }

  Widget _showHompageIcon() {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text('Home Page'),
        leading: Icon(Icons.home),
      ),
    );
  }

  Widget _dailyChallenge() {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text('Daily Challenge'),
        leading: Icon(Icons.home),
      ),
    );
  }

  Widget _coins() {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(
          'Coins',
          style: TextStyle(
              color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.monetization_on,
          color: Colors.pink,
        ),
      ),
    );
  }
}
