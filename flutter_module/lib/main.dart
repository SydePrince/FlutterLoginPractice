import 'package:flutter/material.dart';
import 'package:fluttermodule/login.dart';
//import 'package:fluttermodule/loginaaa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
//  final Map<String, WidgetBuilder> routers = new Map<String, WidgetBuilder>();
  final routers = <String, WidgetBuilder>{
    LoginPage.TAG: (context) => LoginPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: routers,
    );
  }
}
