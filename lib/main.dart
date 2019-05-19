import 'package:flutter/material.dart';
import 'package:flutter_data_storage/sqflite_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter学习'),
      routes: <String,WidgetBuilder>{
        sqfliteRoute:(BuildContext context) => SqflitePage(),
      },
    );
  }
}

const String sqfliteRoute = "SqfliteRoute";

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(sqfliteRoute);
              },
              child: Text("sqflite",style: TextStyle(fontSize: 18),),
              
            )
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
