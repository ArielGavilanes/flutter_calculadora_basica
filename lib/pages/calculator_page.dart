import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _calculatorResult = TextEditingController();
  final TextEditingController _calculatorValueOne = TextEditingController();
  final TextEditingController _calculatorValueTwo = TextEditingController();
  void suma() {
    int value1 = int.tryParse(_calculatorValueOne.text) ?? 0;
    int value2 = int.tryParse(_calculatorValueTwo.text) ?? 0;
    int result = value1 + value2;

    _calculatorResult.text = result.toString();
  }

  void resta() {
    int value1 = int.tryParse(_calculatorValueOne.text) ?? 0;
    int value2 = int.tryParse(_calculatorValueTwo.text) ?? 0;
    int result = value1 - value2;

    _calculatorResult.text = result.toString();
  }

  void multiplicacion() {
    int value1 = int.tryParse(_calculatorValueOne.text) ?? 0;
    int value2 = int.tryParse(_calculatorValueTwo.text) ?? 0;
    int result = value1 * value2;

    _calculatorResult.text = result.toString();
  }

  void division() {
    int value1 = int.tryParse(_calculatorValueOne.text) ?? 0;
    int value2 = int.tryParse(_calculatorValueTwo.text) ?? 0;
    double result = value1 / value2;

    _calculatorResult.text = result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: _calculatorResult,
              decoration: const InputDecoration(
                  labelText: 'Resultado:',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 60),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  fillColor: Colors.white),
              style: const TextStyle(fontSize: 50),
              // enabled: false,
            ),
            TextField(
              controller: _calculatorValueOne,
              decoration: const InputDecoration(
                  labelText: 'Ingrese el 1er valor:',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  filled: true,
                  fillColor: Colors.white),
              // enabled: false,
            ),
            TextField(
              controller: _calculatorValueTwo,
              decoration: const InputDecoration(
                  labelText: 'Ingrese el 2do valor:',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  filled: true,
                  fillColor: Colors.white),
              // enabled: false,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: suma,
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: resta,
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: division,
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.linear_scale,
                      color: Colors.white,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: multiplicacion,
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
