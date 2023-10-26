import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle( fontSize: 30 );

    return Scaffold(
      appBar: AppBar(
        title: const Text('GMJ Hogar Mobile'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 149, 10, 0),
        elevation: 0,
      ),
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text('Número De Clicks', style: fontSize,),
            Text('10', style: fontSize,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          print('Hola Mundo');
        }),
    );
  }
}
