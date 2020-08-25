import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        backgroundColor: Colors.blue[200],
        accentColor: Color(0xff70aeff),
        primaryColor: Colors.red,
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.greenAccent),
          bodyText1: TextStyle(
            color: Colors.redAccent,
            fontSize: 42,
            fontWeight: FontWeight.w900,
          ),
        ),
        fontFamily: "OpenSansCondensed",
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text(
                'Hello World',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Light"),
                Switch(
                  value: isEnabled,
                  onChanged: (val) {
                    setState(() {
                      isEnabled = val;
                      print(isEnabled);
                    });
                  },
                ),
                Text("Dark"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
