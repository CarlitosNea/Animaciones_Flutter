import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:proyecto_animaciones/pantallas/principal.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  State<Splash> createState() => _StateSplash();
}

class _StateSplash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Lottie.asset("animaciones/animacion_check.json"),
            ),

            SizedBox(
              height: 30,
            ),
            Text("BIENVENIDO")
          ],
        ),
      ),
    );
  }

  @override
  void initState(){
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=>PantallaPrincipal()));
    });
  }
}
//commit prueba