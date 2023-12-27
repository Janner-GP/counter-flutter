import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const  CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();

}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Counter Screen")
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100 )),
            const Text("Clicks", style: TextStyle(fontSize: 25 ))
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
          clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}