import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  principal({Key? key}) : super(key: key);

  @override
  _principalState createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5,),
        Center(child: Image.asset("assets/login.png",height: 150,)),
         SizedBox(height: 5,),
         Text("ingreso al sistema"),
        SizedBox(height: 10,),
        _loginUser(),
        SizedBox(height: 10,),
        _loginPass(),
        SizedBox(height: 10,),
        _buttonLogin()

      ],
    );
  }
}

Container _buttonLogin(){
  return Container(
    color: Colors.amber,
    width: 310,
    height: 50,
  child: 
  Center(child: Text("Ingresar",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600),))
  );
}

Container _loginUser(){
  return  Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 25),
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.abc),
              hintText: "Usuario",
                labelText: "nombre de usuario"
                          ),
          )
          );
}

Container _loginPass(){
  return  Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 25),
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            
            style: TextStyle(fontSize: 20),
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.abc),
              hintText: "Ingresar clave",
                labelText: "Clave",
                
                          ),
          )
          );
}