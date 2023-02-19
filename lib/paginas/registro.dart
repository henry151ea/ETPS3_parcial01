import 'package:flutter/material.dart';

class registroUsuario extends StatefulWidget {
  registroUsuario({Key? key}) : super(key: key);

  @override
  _registroUsuarioState createState() => _registroUsuarioState();
}

class _registroUsuarioState extends State<registroUsuario> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5,),
         Text("PARCIAL I - ETPS3!",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600),textScaleFactor: 2,),
        
        Row(
          
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
          margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text("Aquino Henry")
              ),
            SizedBox(height: 5,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text("25-5347-2013")
              ),
          ],
        ),
        SizedBox(height: 5,),
        Center(child: Image.asset("assets/perfil.png",height: 100,)),
     
        SizedBox(height: 3,),
        _carnet(),
        SizedBox(height: 10,),
        _nombre(),
        SizedBox(height: 10,),
        _apellidos(),
         SizedBox(height: 10,),
         _direccion(),
         SizedBox(height: 10,),
         _password(),
         SizedBox(height: 10,),
         _repassword(),
        SizedBox(height: 10,),
        _buttonLogin()
      ],
    );
  }
}


Container _buttonLogin(){
  return Container(
    color: Color.fromARGB(255, 0, 151, 139),
    width: 330,
    height: 24,
  child: 
  Center(child: Text("registrarse",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),))
  );
}

Container _carnet(){
  return  Container(
          height: 36,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.numbers),
              hintText: "",
                labelText:  "25-5347-2013",
                          ),
          )
          );
}

Container _nombre(){
  return  Container(
          height: 36,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: "",
                labelText:  "Henry Ernesto",
                          ),
          )
          );
}

Container _apellidos(){
  return  Container(
          height: 36,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: "",
                labelText:  "Aquino Guzman",
                          ),
          )
          );
}

Container _direccion(){
  return  Container(
          height: 36,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.map),
              hintText: "",
                labelText:  "detalle de direccion",
                          ),
          )
          );
}

Container _password(){
  return  Container(
          height: 36,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            obscureText: true,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: "clave",
                labelText:  "password",
                          ),
          )
          );
}

Container _repassword(){
  return  Container(
          height: 36,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: Colors.white38),
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            obscureText: true,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: "clave",
                labelText:  "re-password",
                          ),
          )
          );
}
