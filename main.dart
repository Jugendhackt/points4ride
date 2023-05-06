import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int kilometer = 0;
  int eingegebenerwert = 0;
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Du hast schon $kilometer Kilometer zurückgelegt',
                style: TextStyle(fontSize: 35),
                textAlign: TextAlign.center,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    eingegebenerwert = int.parse(value);
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              TextButton(
                child: Text(
                  'Eingabe',
                  style: TextStyle(fontSize: 40.0),
                ),
                onPressed: () {
                  setState(() {
                    kilometer = kilometer + eingegebenerwert;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
