import 'package:flutter/material.dart';
import '../widgets/calculator_button.dart';
import '../widgets/display_widget.dart';
import '../models/calculator_logic.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorLogic _calculator = CalculatorLogic();

  void _onButtonPressed(String buttonText) {
    setState(() {
      _calculator.buttonPressed(buttonText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('電卓'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // ディスプレイ
          Expanded(
            flex: 2,
            child: DisplayWidget(
              displayText: _calculator.displayText,
            ),
          ),
          // ボタン
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CalculatorButton(
                            text: "AC",
                            onPressed: () => _onButtonPressed("AC"),
                            backgroundColor: Colors.red[300],
                            textColor: Colors.white,
                          ),
                          CalculatorButton(
                            text: "C",
                            onPressed: () => _onButtonPressed("C"),
                            backgroundColor: Colors.orange[300],
                            textColor: Colors.white,
                          ),
                          CalculatorButton(
                            text: "⌫",
                            onPressed: () => _onButtonPressed("⌫"),
                            backgroundColor: Colors.red[300],
                            textColor: Colors.white,
                          ),
                          CalculatorButton(
                            text: "÷",
                            onPressed: () => _onButtonPressed("÷"),
                            backgroundColor: Colors.blue[300],
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          CalculatorButton(
                            text: "7",
                            onPressed: () => _onButtonPressed("7"),
                          ),
                          CalculatorButton(
                            text: "8",
                            onPressed: () => _onButtonPressed("8"),
                          ),
                          CalculatorButton(
                            text: "9",
                            onPressed: () => _onButtonPressed("9"),
                          ),
                          CalculatorButton(
                            text: "×",
                            onPressed: () => _onButtonPressed("×"),
                            backgroundColor: Colors.blue[300],
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          CalculatorButton(
                            text: "4",
                            onPressed: () => _onButtonPressed("4"),
                          ),
                          CalculatorButton(
                            text: "5",
                            onPressed: () => _onButtonPressed("5"),
                          ),
                          CalculatorButton(
                            text: "6",
                            onPressed: () => _onButtonPressed("6"),
                          ),
                          CalculatorButton(
                            text: "-",
                            onPressed: () => _onButtonPressed("-"),
                            backgroundColor: Colors.blue[300],
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          CalculatorButton(
                            text: "1",
                            onPressed: () => _onButtonPressed("1"),
                          ),
                          CalculatorButton(
                            text: "2",
                            onPressed: () => _onButtonPressed("2"),
                          ),
                          CalculatorButton(
                            text: "3",
                            onPressed: () => _onButtonPressed("3"),
                          ),
                          CalculatorButton(
                            text: "+",
                            onPressed: () => _onButtonPressed("+"),
                            backgroundColor: Colors.blue[300],
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.all(4),
                            child: ElevatedButton(
                              onPressed: () => _onButtonPressed("0"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[300],
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                minimumSize: Size(120, 60),
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CalculatorButton(
                          text: ".",
                          onPressed: () => _onButtonPressed("."),
                        ),
                        CalculatorButton(
                          text: "=",
                          onPressed: () => _onButtonPressed("="),
                          backgroundColor: Colors.green[400],
                          textColor: Colors.white,
                        ),
                      ],
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
