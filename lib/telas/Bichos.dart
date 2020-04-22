import 'package:aprendaingles/res.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  
  AudioCache _audioCache = AudioCache();
  
  _executar(String nomeAudio){
    _audioCache.play(nomeAudio);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      Res.caomp3,
      Res.vacamp3,
      Res.macacomp3,
      Res.leaomp3,
      Res.gatomp3,
      Res.ovelhamp3
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
              _executar(Res.caomp3);
            },
            child: Image.asset(Res.pngcao),
          ),
          GestureDetector(
            onTap: (){
              _executar(Res.gatomp3);
            },
            child: Image.asset(Res.pnggato),
          ),
          GestureDetector(
            onTap: (){
              _executar(Res.leaomp3);
            },
            child: Image.asset(Res.pngleao),
          ),
          GestureDetector(
            onTap: (){
              _executar(Res.macacomp3);
            },
            child: Image.asset(Res.pngmacaco),
          ),
          GestureDetector(
            onTap: (){
              _executar(Res.ovelhamp3);
            },
            child: Image.asset(Res.pngovelha),
          ),
          GestureDetector(
            onTap: (){
              _executar(Res.vacamp3);
            },
            child: Image.asset(Res.pngvaca),
          ),
        ],
    );
  }
}
