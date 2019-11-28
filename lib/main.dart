import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetsdata1 = [];
  // List<Widget> widgetsdata2 = [];
  int counter = 1;

  void tambah() {
    setState(() {
      widgetsdata1.add(Text("Data ke - " + counter.toString(),
          style: TextStyle(fontSize: 20)));
      counter++;
    });
  }

  void hapus() {
    setState(() {
      widgetsdata1.removeLast();
      counter--;
    });
  }
  // _MyAppState() {
  //   for (var i = 1; i < 21; i++) {
  //     widgetsdata1.add(Text(
  //       "Data 1 ke - " + i.toString(),
  //       style: TextStyle(fontSize: 20),
  //     ));
  //   }
  //   for (var i = 21; i < 41; i++) {
  //     widgetsdata2.add(Text(
  //       "Data 2 ke - " + i.toString(),
  //       style: TextStyle(fontSize: 20),
  //     ));
  //   }
  // widgetdata.add(Text("Data 1"));
  // widgetdata.add(Text("Data 2"));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar List View"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah"),
                  onPressed: tambah,
                ),
                RaisedButton(
                  child: Text("Hapus"),
                  onPressed: hapus,
                )
              ],
            )
          ],
          // children: <Widget>[
          //   Column(
          //     children: widgetsdata1,
          //   ),
          //   Column(
          //     children: widgetsdata2,
          //   )
          // ],
        ),
      ),
    );
  }
}
