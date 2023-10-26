import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle( fontSize: 30 );

    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('GMJ Hogar Mobile'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 149, 10, 0),
        elevation: 0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            const Text('Número De Clicks', style: fontSize,),
            Text('$counter', style: fontSize,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          counter++;
          print('Hola Mundo: $counter');
        }),
    );
  }
}
