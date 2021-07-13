import 'package:flutter/material.dart';
import 'package:pasar_datos/pages/pageStatefull.dart';
import 'package:pasar_datos/pages/pageStateless.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: _Home(),
    );
  }
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textoController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: Text('Material AppBar'),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              controller: _textoController,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.green[200], // Color a rellenar
                filled: true, // True, rellenalo
                hintText: "ingresa info",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageStateless(
                            texto: _textoController.text,
                          )));
            },
            child: Text('Envia a Stateless - Text(texto),'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageStatefull(
                            texto: _textoController.text,
                          )));
            },
            child: Text('Envia a Statefull - Text(widget.texto)'),
          )
        ],
      ),
    );
  }
}
