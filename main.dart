import 'package:flutter/material.dart';

int kilometer = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'points4riding',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'points4riding',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Text(
                'Du hast schon $kilometer Kilometer zurückgelegt',
                style: TextStyle(fontSize: 35),
                textAlign:TextAlign.center,
              ),
              TextField(
                onChanged: (kilometer),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
