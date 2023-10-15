import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String statement = "";
  String result = "0";
  final List<String> buttons = [
    '⌫',
    '(',
    ')',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    'AC',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black, // Set the background color to black
        body: Column(
          children: [
            Flexible(flex: 2, child: resultWidget()),
            Expanded(flex: 4, child: _buttons()),
          ],
        ),
      ),
    );
  }

  Widget resultWidget() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Text(
            statement,
            style: const TextStyle(fontSize: 32, color: Colors.white), // Set text color to white
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerRight,
          child: Text(
            result,
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white), // Set text color to white
          ),
        )
      ],
    );
  }

  Widget _buttons() {
    return GridView.builder(
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (BuildContext context, int index) {
        return _myButton(buttons[index]);
      },
      itemCount: buttons.length,
    );
  }

  _myButton(String text) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: MaterialButton(
        onPressed: () {
          setState(() {
            handleButtonTap(text);
          });
        },
        color: _getColor(text),
        textColor: Colors.white,
        child: Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
        shape: const CircleBorder(),
      ),
    );
  }

  handleButtonTap(String text) {
    if (text == "AC") {
      statement = "";
      result = "0";
      return;
    }
    if (text == "=") {
      result = calculate();
      if (result.endsWith(".0")) {
        result = result.replaceAll(".0", "");
      }
      return;
    }

    if (text == "⌫") {
      statement = statement.substring(0, statement.length - 1);
      return;
    }
    statement = statement + text;
  }

  calculate() {
    try {
      var exp = Parser().parse(statement);
      var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      return evaluation.toString();
    } catch (e) {
      return "Err";
    }
  }

  _getColor(String text) {
    if (text == "/" || text == "*" || text == "+" || text == "-" || text == "=") {
      return Colors.amber[700];
    }
    if (text == "⌫") {
      return Colors.grey;
    }
    if (text == "(" || text == ")") {
      return Colors.grey;
    }
    return Colors.grey[850];
  }
}
