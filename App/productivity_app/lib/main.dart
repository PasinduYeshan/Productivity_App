import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new SplachScreen(),
        '/HomeScreen': (BuildContext context) => new SecondScreen(),
      },
    );
  }
}

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GeeksForGeeks")),
      body: Center(
          child: Text(
        "Home page",
        textScaleFactor: 2,
      )),
    );
  }
}
