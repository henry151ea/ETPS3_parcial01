import 'package:flutter/material.dart';
import 'package:parcial_01/paginas/login.dart';

class menunav extends StatefulWidget {
  const menunav({super.key});

  @override
  State<menunav> createState() => _menunavState();
}

class _menunavState extends State<menunav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.key),
            label: 'login',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_add),
            label: 'Registrarse',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.settings),
            label: 'configuracion',
          ),
        ],
      ),
      body: <Widget>[
        _login(),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}

Container _login(){
return Container(child: principal());

}
