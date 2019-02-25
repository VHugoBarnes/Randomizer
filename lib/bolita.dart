import 'package:flutter/material.dart';
import 'dart:math';

class Bolita extends StatefulWidget{

  State<StatefulWidget> createState() {
    
    return _Bolita();
  }
}

class _Bolita extends State<Bolita>{

  Color colorGris = const Color(0xFF717375);
  Color colorVerde = const Color(0xFF47cc45);
  Color colorRojo = const Color(0xFFcc4b45);
  Color selected = const Color(0xFF717375);

  bool win = false;
  static int nume = 0;
  static String mensajes= "¡Prueba!";


  void onPressedBolita(){
      setState(() {
      final _random = new Random();
      int number =_random.nextInt(5);

      if(number%2 ==0){
        win = true;
        nume = 1;
        mensajes = "Felicidades 🎉";
        // selected = const Color(0xFF47cc45); 
        Scaffold.of(context).showSnackBar(SnackBar(content: Text(mensajes), duration: Duration(seconds: 1),));
        
      }else{
        win = false;
        nume = 2;
        mensajes = "¡Perdiste! ☹";
        // selected = const Color(0xFFcc4b45);
        Scaffold.of(context).showSnackBar(SnackBar(content: Text(mensajes), duration: Duration(seconds: 1)));
      }
      
      });
  }

  Color estableceColor(){
    switch (nume) {
      case 0:
        selected = const Color(0xFF717375);

        break;
      case 1:
        selected = const Color(0xFF47cc45);
        break;
      case 2:
        selected = const Color(0xFFcc4b45);
        break;
      default:
    }
    return selected; 
  }

  
  static String obtenerMensaje(){
        return mensajes;
  }
  
  Widget build(BuildContext context) {  
    //LOL
    return FloatingActionButton(
      mini: true,
      onPressed: onPressedBolita,
      backgroundColor:estableceColor(),
    );
  }
}