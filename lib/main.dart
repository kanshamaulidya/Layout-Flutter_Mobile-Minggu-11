import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: MyHomePage(),
        title: 'LALALALALA',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.blueGrey,
        child: Column(children: [
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(20),
                height: 1000,
                width: 1000,
                alignment: Alignment.center,
                color: Colors.white,
                child: Center(
                    child: Text(
                  'Bluetooth',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(20),
                color: Colors.lightBlue,
                child: Image.network(
                  'https://tse2.mm.bing.net/th?id=OIP.-G1e6r34AjYqYFQUKIxKTQHaEN&pid=Api&P=0&h=180',
                  fit: BoxFit.cover,
                ),
              ))
            ],
          )),
          Expanded(
              child: Container(
                  color: Colors.brown,
                  child: Center(
                    child: Icon(Icons.bluetooth_audio),
                  ))),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
                color: Color.fromARGB(255, 16, 141, 243),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        selectDate.toString(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),
                      OutlinedButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025),
                          ).then((value) {
                            setState(() {
                              selectDate = value!;
                            });
                          });
                        },
                        child: Text("Date Picker"),
                      ),
                    ],
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
