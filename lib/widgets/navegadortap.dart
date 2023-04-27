import 'package:flutter/material.dart';


class NavTap extends StatelessWidget {
  const NavTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/5stars.jpg"),
                fit: BoxFit.cover
            )
        ),
      ),

    );
  }
}
