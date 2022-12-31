import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontsize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'easy read',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  style: TextStyle(fontSize: _fontsize),
                  maxLines: null,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Slider(
                value: _fontsize,
                onChanged: (value) {
                  setState(() {
                    _fontsize = value;
                  });
                },
                max: 200,
                min: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
