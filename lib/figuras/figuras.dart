import 'package:flutter/material.dart';

class Encabezado extends StatelessWidget {
  const Encabezado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[
                  Colors.black,
                  Colors.lightGreen
                ],
              begin: Alignment.topCenter
            )
          ),
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: _cabecera(),
          ),
        )
      ],
    );
  }
}

class _cabecera extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    final lapiz = new Paint();
    lapiz.color=Colors.black;
    lapiz.strokeWidth=2;
    lapiz.strokeCap=StrokeCap.round;
    lapiz.style=PaintingStyle.fill;
    final dib = new Path();
    dib.lineTo(0, size.height*0.2);
    dib.quadraticBezierTo(size.width*1, size.height*0.1, size.width*0.2, size.height*0);
    dib.lineTo(size.width, 0);
    canvas.drawPath(dib, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
