import 'package:flutter/material.dart';
import 'bolita.dart';

class Body extends StatelessWidget{
  Widget build(BuildContext context) {

    /* ==============================================================
       Fondo gradiente de 3 colores.
       ==============================================================*/
    final fondo =Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFf9ed32),
            Color(0xFFee2a7b),
            Color(0xFF002aff),
          ],
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topRight,
          // stops: [0.0, 0.1, 0.1],
          tileMode: TileMode.clamp
        )
      ),
    );

    /* ==============================================================
       Titulo
       ==============================================================*/
    final titulo =Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Text(
        "¡Saca una bolita!",
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Color(0xFF2b2c2d),
        ),
      ),
    );

    /* ==============================================================
       da clic
       ==============================================================*/
    final clic =Container(
      margin: EdgeInsets.only(
        top: 20,
        // bottom: 10,
      ),
      child: Text(
        "Da clic en cada bolita",
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xFF2b2c2d),
        ),
      ),
    );  

    /* ==============================================================
       Bolita :D
       ==============================================================*/
    final bolita = Bolita();
    /* ==============================================================
       Bolitas XD
       ==============================================================*/
    final bolitas =Container(
      margin: EdgeInsets.only(
        top: 10,
        // right: 10,
        // left: 10
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          bolita,
          bolita,
          bolita,
          bolita,
          bolita,
          bolita,
        ],
      ),
    );

    /* ==============================================================
       Información estadistica.
        Probabilidad de que ganes: 50%
        Probabilidad de que pierdas: 50%
        Probabilidad por bolita: 16.666%
        Probabilidad final de ganar: 
       ==============================================================*/
    final ganes =Container(
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5
      ),
      child: Text(
      "Probabilidad de que ganes: 50%", 
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: Color(0xFF2b2c2d),
        ),
      ),
    );
    final pierdas =Container(
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Text(
      "Probabilidad de que pierdas: 50%",
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: Color(0xFF2b2c2d),
        ),
      ),
    );
    final probBolita =Container(
      margin: EdgeInsets.only(
        top: 5, 
        bottom: 5
      ),
      child: Text(
      "Probabilidad por bolita: 16.666%", 
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: Color(0xFF2b2c2d),
        ),
      ),
    );
    final probFinal =Container(
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Text(
      "Probabilidad final de ganar:", 
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: Color(0xFF2b2c2d),
        )
      ,),
    ); 
    final info = Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ganes,
          pierdas,
          probBolita,
          probFinal,
        ],
      ),
    );

    /* ==============================================================
        Encabezado
       ==============================================================*/
    final centrarTitulo =Center(
      child: titulo,
    );
    final centrarClic = Center(
      child: clic,
    );

    /* ==============================================================
       Panel contenedor de información.
       ==============================================================*/
    final paper = Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        top: 40,
        bottom: 20,
        left: 15,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: <Widget>[
          centrarTitulo,
          centrarClic,
          bolitas,
          info
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        fondo,
        paper,
      ],
    );
  }
  
}