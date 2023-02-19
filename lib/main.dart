import 'package:flutter/material.dart';
import 'package:parcial_01/paginas/login.dart';
import 'package:parcial_01/paginas/menu.dart';


void main() {
  runApp(const Parcialtst());
}

class Parcialtst extends StatelessWidget {
  const Parcialtst({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial_01',
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Parcial_01")),
        body: 
        
        menunav()
        
      ),
    );
  }
}

  