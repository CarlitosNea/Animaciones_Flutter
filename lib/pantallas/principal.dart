import 'package:flutter/material.dart';
import 'package:proyecto_animaciones/figuras/figuras.dart';


class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({Key? key}) : super(key: key);

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Estopify'),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Encabezado(
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.white,
        selectedFontSize: 17,
        unselectedFontSize: 16,
        onTap: (value) {
          // Respond to item press.
        },
        items: [

          BottomNavigationBarItem(
            label: ('Music'),
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: ('Favorites'),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: ('Search'),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: ('Acount'),
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),

    );
  }
}
