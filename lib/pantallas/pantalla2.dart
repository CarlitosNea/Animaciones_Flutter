import 'package:flutter/material.dart';


class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola mundo"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[
                  Colors.black,
                  Colors.lightBlueAccent
                ],
                begin: Alignment.topCenter
            )
        ),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            ListView.builder(
                itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context,index){
                  return Card(
                    elevation: 10,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)

                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 90,
                      child: ListTile(
                        title: Text("Titulo list",
                          style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'titulos',
                        ),),
                        subtitle: Text("subtitle"),
                        leading: Icon(Icons.icecream_outlined,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  );
              },
            )
          ],
        ),


      ),
    );
  }
}
