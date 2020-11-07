import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Bai Tap B2.2'),
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
  int _counter = 0;
  Color _color = Colors.red;
  // Color listColor = [Colors.blue, Colors.blue];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Icon(Icons.home), Text(widget.title)],
        ),
      ),
      body: Center(
          child: GestureDetector(
            onTap: () => {
               Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondRoute()))
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    }),
                Text('$_counter'),
                FlatButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondRoute()))
                  },
                  color: Colors.blue,
                  child: Text("Navigator"),
                )
              ],
            ),
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
          child: FlatButton(
        color: Colors.green,
        child: Text("Back Home"),
        onPressed: () => {Navigator.pop(context)},
      )),
    );
  }
}

// Icon(Icons.favorite, color: _color, size: 50,),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   FlatButton(
//                       onPressed: () {
//                         setState(() {
//                           _color = Colors.red;
//                         });
//                       },
//                       color: Colors.red,
//                       child: Column(children: [Text("Color Red")])),
//                   FlatButton(
//                       onPressed: () {
//                         setState(() {
//                           _color = Colors.blue;
//                         });
//                       },
//                       color: Colors.blue,
//                       child: Column(children: [Text("Color Blue")])),
//                   FlatButton(
//                       onPressed: () {
//                         setState(() {
//                           _color = Colors.yellow;
//                         });
//                       },
//                       color: Colors.yellow,
//                       child: Column(children: [Text("Color Yellow")])),
//                 ],
//               ),
//             )
