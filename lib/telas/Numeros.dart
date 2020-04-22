import 'package:aprendaingles/res.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  AudioCache _audioCache = AudioCache();

  _executar(String nomeAudio){
    _audioCache.play(nomeAudio);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      Res.mp31,
      Res.mp32,
      Res.mp33,
      Res.mp34,
      Res.mp35,
      Res.mp36
    ]);
  }

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
          onTap: (){
            _executar(Res.mp31);
          },
          child: Image.asset(Res.png1),
        ),
        GestureDetector(
          onTap: (){
            _executar(Res.mp32);
          },
          child: Image.asset(Res.png2),
        ),
        GestureDetector(
          onTap: (){
            _executar(Res.mp33);
          },
          child: Image.asset(Res.png3),
        ),
        GestureDetector(
          onTap: (){
            _executar(Res.mp34);
          },
          child: Image.asset(Res.png4),
        ),
        GestureDetector(
          onTap: (){
            _executar(Res.mp35);
          },
          child: Image.asset(Res.png5),
        ),
        GestureDetector(
          onTap: (){
            _executar(Res.mp36);
          },
          child: Image.asset(Res.png6),
        ),
      ],
    );
  }
}
