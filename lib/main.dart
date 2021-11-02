

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;      
    });        
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String,Object>> perguntas = [
      {
        'texto':'Qual sua cor favorita?',
        'resposta': ['preto','azul','vermelho','amarelo']
      },
      {
        'texto':'Qual seu animal favorito?',
        'resposta': ['gato','cachorro','papagaio','elefante']
      },
      {
        'texto':'Qual jogador favorito favorito?',
        'resposta': ['neymar','messi','CR7','pele']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState(){
    return _PerguntaAppState(

    );
  }  

}
