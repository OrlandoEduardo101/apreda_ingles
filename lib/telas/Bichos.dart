import 'package:aprendaingles/res.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    print("Largura: $largura Altura: $altura Ratio: ${MediaQuery.of(context).size.aspectRatio}");

    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          GestureDetector(
            onTap: (){},
            child: Image.asset(Res.pngcao),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset(Res.pnggato),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset(Res.pngleao),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset(Res.pngmacaco),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset(Res.pngovelha),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset(Res.pngvaca),
          ),
        ],
    );
  }
}
