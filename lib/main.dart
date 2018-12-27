import 'package:flutter/material.dart';
import 'package:music_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          color: const Color(0xFFDDDDDD),
          onPressed: () {},
        ),
        elevation: 0.0,
        title: Text(''),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            color: const Color(0xFFDDDDDD),
            onPressed: () {},
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            width: double.infinity,
            height: 125.0,
          ),
          new Container(
            color: accentColor,
            child: new Column(
              children: <Widget>[
                new RichText(
                  text: new TextSpan(
                    text: '',
                    children: [
                      new TextSpan(
                          text: 'Song Title\n',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4.0,
                              height: 1.5)),
                      new TextSpan(
                        text: 'Artist Name',
                        style: new TextStyle(
                            color: Colors.white.withOpacity(.75),
                            fontSize: 12.0,
                            letterSpacing: 3.0,
                            height: 1.5),
                      )
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
