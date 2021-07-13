import 'package:flutter/material.dart';

class PageStateless extends StatelessWidget {
  final String texto;

  const PageStateless({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Page'),
      ),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}
