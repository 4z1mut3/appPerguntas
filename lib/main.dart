import 'package:exemplo/resposta.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  final List<Map<String,Object>> _perguntas = [
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

  void _responder(){
    setState(() {
      _perguntaSelecionada++;      
    });        
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPerguntaSelecionada 
      ? _perguntas[_perguntaSelecionada]['resposta']
      :null;
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString(),),
            ...respostas.map((t) => Resposta(t,_responder)).toList(),
        ],
      ):null,
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
