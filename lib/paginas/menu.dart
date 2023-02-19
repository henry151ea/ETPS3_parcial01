import 'package:flutter/material.dart';
import 'package:parcial_01/paginas/login.dart';
import 'package:parcial_01/paginas/registro.dart';

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
        _registro(),
        Container(
          color: Color.fromARGB(255, 234, 252, 245),
          alignment: Alignment.center,
          child: const Text('Configuracion del sistema'),
        ),
      ][currentPageIndex],
    );
  }
}

Container _login(){
return Container(child: principal());

}

Container _registro(){
  return Container(child: registroUsuario());
}
