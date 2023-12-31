import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Kalkulator';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: Colors.deepPurple,
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}
class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String resulttext = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Number 1 : "),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("Number 2 : "),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num2controller,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text("+"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple
                ),
                onPressed : () {
                  setState(() {
                    int result = int.parse(num1controller.text) + int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
              ElevatedButton(
                child: Text("-"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple
                ),
                onPressed : () {
                  setState(() {
                    int result = int.parse(num1controller.text) - int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
              ElevatedButton(
                child: Text("x"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple
                ),
                onPressed : () {
                  setState(() {
                    int result = int.parse(num1controller.text) * int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
              ElevatedButton(
                child: Text("/"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple
                ),
                onPressed : () {
                  setState(() {
                    double result = double.parse(num1controller.text)/double.parse(num2controller.text);
                    resulttext = result.toStringAsPrecision(3);
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Result:",
                style: TextStyle(
                  fontSize: 30,
                ),),
              new Text(resulttext,
                style: TextStyle(
                  fontSize: 30,
                ),),
            ],
          ),
        ],
      ),
    );
  }
}