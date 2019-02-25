import 'package:flutter/material.dart';

class Body extends StatelessWidget{
  Widget build(BuildContext context) {

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
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );

    return Stack(
      children: <Widget>[
        fondo,
        paper
      ],
    );
  }
  
}