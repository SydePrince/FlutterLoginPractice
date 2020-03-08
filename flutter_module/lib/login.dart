import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  static final String TAG = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: _LoginPage());
  }
}

class _LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

final nickNameLayout = Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Text("用户名    ", style: TextStyle(
    ),),
    Expanded(
        child: TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "用户名",
          contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    ))
  ],
);
final nickName = TextFormField(
  onSaved: (String value) => _nickName,
  keyboardType: TextInputType.text,
  autofocus: false,
    validator: (String value) {
      if (value.isEmpty) {
        return "请输入用户名";
      }
    },
  decoration: InputDecoration(
      hintText: "用户名",
      labelText: "密码",
      contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
);

final password = TextFormField(
  obscureText: true,
  onSaved: (String value) => _password,
  autofocus: false,
  validator: (String value) {
    if (value.isEmpty) {
      return "请输入密码";
    }
  },

  decoration: InputDecoration(
      hintText: "密码",
      labelText: "密码",
      contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
);
String _nickName, _password;
final _formKey = GlobalKey<FormState>();
class _LoginPageState extends State<_LoginPage> {


  @override
  Widget build(BuildContext context) {

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
//        borderRadius: BorderRadius.circular(30.0),
//        shadowColor: Colors.lightBlueAccent.shade100,
//        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            if(_formKey.currentState.validate()) {
              _formKey.currentState.save();
              print("object");
            }
//            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.green,
          child: Text('登 录', style: TextStyle(color: Colors.white, fontSize: 20.0),),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text('忘记密码?', style: TextStyle(color: Colors.black54, fontSize: 18.0),),
      onPressed: () {},
    );


    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(

          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child:Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                nickName,
                SizedBox(
                  height: 10.0,
                ),
                password,
                SizedBox(
                  height: 10.0,
                ),
                loginButton,
                SizedBox(
                  height: 10.0,
                ),
                forgotLabel
//              SizedBox(height: 48.0,),
              ],
            ),
          )

        ));
  }
}
/*
* Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
//                Padding(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "A: ",
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                  Text(
                    "B: ",
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    "C: ",
                    style: TextStyle(color: Colors.black26),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "A: ",
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                  Text(
                    "B: ",
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    "C: ",
                    style: TextStyle(color: Colors.black26),
                  ),
                ],
              )
            ],
          ),
        ))*/

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
