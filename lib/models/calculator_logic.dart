class CalculatorLogic {
  String _output = "0";
  String _displayText = "0";
  double _num1 = 0;
  double _num2 = 0;
  String _operand = "";
  bool _shouldReset = false;

  String get output => _output;
  String get displayText => _displayText;

  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _clear();
    } else if (buttonText == "AC") {
      _allClear();
    } else if (buttonText == "⌫") {
      _backSpace();
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "×" ||
        buttonText == "÷") {
      _setOperator(buttonText);
    } else if (buttonText == "=") {
      _calculate();
    } else if (buttonText == ".") {
      _addDecimal();
    } else {
      _addNumber(buttonText);
    }
  }

  void _clear() {
    _output = "0";
    _displayText = "0";
    _shouldReset = false;
  }

  void _allClear() {
    _output = "0";
    _displayText = "0";
    _num1 = 0;
    _num2 = 0;
    _operand = "";
    _shouldReset = false;
  }

  void _backSpace() {
    if (_output.length > 1) {
      _output = _output.substring(0, _output.length - 1);
      _displayText = _output;
    } else {
      _output = "0";
      _displayText = "0";
    }
  }

  void _addNumber(String number) {
    if (_shouldReset) {
      _output = number;
      _shouldReset = false;
    } else {
      if (_output == "0") {
        _output = number;
      } else {
        _output += number;
      }
    }
    _displayText = _output;
  }

  void _addDecimal() {
    if (_shouldReset) {
      _output = "0.";
      _shouldReset = false;
    } else if (!_output.contains(".")) {
      _output += ".";
    }
    _displayText = _output;
  }

  void _setOperator(String operator) {
    _num1 = double.parse(_output);
    _operand = operator;
    _shouldReset = true;
  }

  void _calculate() {
    if (_operand.isEmpty) return;

    _num2 = double.parse(_output);
    double result = 0;

    switch (_operand) {
      case "+":
        result = _num1 + _num2;
        break;
      case "-":
        result = _num1 - _num2;
        break;
      case "×":
        result = _num1 * _num2;
        break;
      case "÷":
        if (_num2 != 0) {
          result = _num1 / _num2;
        } else {
          _output = "Error";
          _displayText = "Error";
          return;
        }
        break;
    }

    _output = _formatResult(result);
    _displayText = _output;
    _operand = "";
    _shouldReset = true;
  }

  String _formatResult(double result) {
    if (result == result.roundToDouble()) {
      return result.round().toString();
    } else {
      return result.toString();
    }
  }
}
