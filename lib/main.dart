import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "123190130 - Tugas 1",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(top: 300.0, bottom: 100.0),
              child: const FlutterLogo(
                size: 70.0,
              )),
          Container(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 20.0, right: 20.0),
            // margin: EdgeInsets.all(1.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 20.0, right: 20.0),
            // margin: EdgeInsets.all(1.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 2.0, left: 20.0, right: 20.0),
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {},
              child: Text('Log In'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                    bottom: 15.0, left: 20.0, right: 20.0),
                primary: Colors.blue,
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {},
              child: const Text('Forgot Password?'),
            ),
          )
        ],
      ),
    );
  }
}
