import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(238, 28, 4, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Frases do Dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
'Se você não encher sua mente com a palavra de Deus, o inimigo vai te encher de medo, ansiedade, estresse, preocupação e tentação',
'Quando for a hora certa,Eu o Senhor, farei acontecer.',
'Vai da certo, porque Deus não falha!',
'Quando Deus der a você um novo começo, NÃO repita os mesmos erros.',
'Seja paciente, aproveite a jornada, continue trabalhando e você verá os resultados que sempre sonhou.',
'Deus sabe o que é melhor para você.',
'Até aqui o senhor nos ajudou!',
  ];

  void _incrementCounter() {
    setState(() {
      
      _numeroAleatorio = new Random().nextInt(7);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          widget.title,
          style: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          ),
          ),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.normal, // Pode ajustar o peso da fonte
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal, // Adicione o estilo desejado
            ),
            ),
            Text(
              _frases[_numeroAleatorio],
              style: const TextStyle (
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
                textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
