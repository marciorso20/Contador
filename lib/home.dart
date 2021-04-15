import 'package:exercicio05/contador.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var resultado = 0;

  int add(num1, num2) {
    return num1 + num2;
  }

  int sub(num1, num2) {
    return num1 - num2;
  }

  void resultadoFinal(Function(int, int) func) {
    setState(() {
      resultado = func(resultado, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Vamos começar a contar?",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(fontSize: 55),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Contador(
                cor: Colors.blue,
                func: () {
                  resultadoFinal(add);
                },
                icon: Icon(Icons.add),
              ),
              SizedBox(
                width: 25,
              ),
              Contador(
                cor: Colors.red,
                func: () {
                  resultadoFinal(sub);
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
