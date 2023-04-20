import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: const HomePage(), theme: ThemeData(primarySwatch: Colors.lime)));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tradetaj")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient:
                  const LinearGradient(colors: [Colors.pink, Colors.teal]),
              color: Colors.amber,
              boxShadow: const [
                BoxShadow(blurRadius: 10, color: Colors.red),
              ]),
          child: const Text(
            "Box",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
