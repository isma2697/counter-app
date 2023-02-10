import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize40 = TextStyle(fontSize: 40.0);
    int counter = 0;
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Número de Clicks', style: fontSize40),
              Text(
                '$counter',
                style: fontSize40,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hola Mundo:$counter');
            counter++;
          },
          child: const Icon(Icons.add),
        ));
  }
}
