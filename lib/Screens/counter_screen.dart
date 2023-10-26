import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
    
  int counter = 0;


  void increase(){
    counter++;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  void restart(){
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle( fontSize: 30 );


    return Scaffold(
      appBar: AppBar(
        title: const Text('GMJ Hogar Mobile'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 149, 10, 0),
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
      floatingActionButton: FloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        restartFn: restart,
      ),
    );
  }
}

class FloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function restartFn;

  const FloatingActions({
    super.key, required this.increaseFn, required this.decreaseFn, required this.restartFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 149, 10, 0),
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
          ),

          FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 149, 10, 0),
          child: const  Icon(Icons.restart_alt),
          onPressed: () => restartFn(),
          ),

          FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 149, 10, 0),
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFn(),
          ),
      ],
    );
  }
}
