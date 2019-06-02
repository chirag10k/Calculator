import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApp",
      home: new HomePage(),
      theme: new ThemeData(
          primarySwatch: Colors.purple,
          brightness: Brightness.light,
          accentColor: Colors.green
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String myText = "Hello World";
  void _changeText(){
    setState(() {
      if(myText.startsWith("H")){
        myText = "Welcome To My App";
      }
      else{
        myText = "Hello World";
      }

    });
  }
  Widget _bodywidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText,style: new TextStyle(
                fontSize: 22.0
            ),),
            new RaisedButton(
              child: new Text("Click",style: new TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),),
              onPressed: _changeText,
              color: Colors.red,
            )
          ],
        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: _bodywidget()
    );
  }
}
