import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, res = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculator"),
        ),
        body: new Container(
            padding: EdgeInsets.all(40.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text("Output : $res",
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      new InputDecoration(hintText: "Enter First Number"),
                  controller: t1,
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      new InputDecoration(hintText: "Enter Second Number"),
                  controller: t2,
                ),
                new Padding(padding: EdgeInsets.only(top: 20)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new MaterialButton(
                        color: Colors.lightBlue,
                        child: new Text("+"),
                        onPressed: doAdd),
                    new MaterialButton(
                        color: Colors.lightBlue,
                        child: new Text("-"),
                        onPressed: doSub),
                  ],
                ),
                new Padding(
                    padding: EdgeInsets.only(
                  top: 20,
                )),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new MaterialButton(
                        color: Colors.lightBlue,
                        child: new Text("/"),
                        onPressed: doDiv),
                    new MaterialButton(
                        color: Colors.lightBlue,
                        child: new Text("x"),
                        onPressed: doMul)
                  ],
                ),
                new Padding(
                    padding: EdgeInsets.only(
                  top: 20,
                )),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new MaterialButton(
                        color: Colors.lightBlue,
                        child: new Text("Clear"),
                        onPressed: doClear),
                  ],
                ),
              ],
            )));
  }
}
