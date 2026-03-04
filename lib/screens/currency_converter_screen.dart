import 'package:flutter/material.dart';

class CurrencyConverterScreen extends StatefulWidget {
  const CurrencyConverterScreen({super.key});

  @override
  State<CurrencyConverterScreen> createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  String _inputValue = '1,000';
  String _outputValue = '12,650';
  String _fromCurrency = 'USD';
  String _toCurrency = 'UZS';

  // Cyan color from the design
  static const Color cyanColor = Color(0xFF00C8FF);
  static const Color darkBg = Color(0xFF0D1B2A);
  static const Color cardBg = Color(0xFF112233);
  static const Color buttonBg = Color(0xFF1A2D40);

  void _onKeyPressed(String key) {
    setState(() {
      if (key == 'C') {
        _inputValue = '0';
        _outputValue = '0';
      } else if (key == '⌫') {
        if (_inputValue.length > 1) {
          _inputValue = _inputValue.substring(0, _inputValue.length - 1);
        } else {
          _inputValue = '0';
        }
      } else if (key == '÷' || key == '×' || key == '−' || key == '+') {
        // operator logic placeholder
      } else if (key == '=') {
        // calculate placeholder
      } else {
        if (_inputValue == '0') {
          _inputValue = key;
        } else {
          _inputValue += key;
        }
      }
    });
  }

  void _swapCurrencies() {
    setState(() {
      final temp = _fromCurrency;
      _fromCurrency = _toCurrency;
      _toCurrency = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Convertor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      // Cur Sync button
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: buttonBg,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Cur ',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'Sync',
                              style: TextStyle(
                                color: cyanColor,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      // Moon icon
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: buttonBg,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Icon(
                          Icons.dark_mode_outlined,
                          color: Colors.white70,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Currency Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // From card
                  _buildCurrencyCard(
                    currency: _fromCurrency,
                    amount: _inputValue,
                    isTop: true,
                  ),

                  // Swap button
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Center(
                      child: GestureDetector(
                        onTap: _swapCurrencies,
                        child: Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.symmetric(vertical: 0),
                          decoration: BoxDecoration(
                            color: cyanColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: cyanColor.withOpacity(0.4),
                                blurRadius: 12,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.swap_vert,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // To card
                  _buildCurrencyCard(
                    currency: _toCurrency,
                    amount: _outputValue,
                    isTop: false,
                    isOutput: true,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 14),

            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: buttonBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.greenAccent.withOpacity(0.6),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '1 $_fromCurrency = 12.65 $_toCurrency',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Keypad
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildKeypad(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrencyCard({
    required String currency,
    required String amount,
    required bool isTop,
    bool isOutput = false,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          // Flag circle
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.black45,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.flag_outlined,
              color: Colors.white38,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            currency,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Text(
            amount,
            style: TextStyle(
              color: isOutput ? cyanColor : Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKeypad() {
    final keys = [
      ['C', '⌫', '%', '÷'],
      ['7', '8', '9', '×'],
      ['4', '5', '6', '−'],
      ['1', '2', '3', '+'],
      ['00', '0', '.', '='],
    ];

    final operatorKeys = {'÷', '×', '−', '+', '='};

    return Column(
      children: keys.map((row) {
        return Expanded(
          child: Row(
            children: row.map((key) {
              final isOperator = operatorKeys.contains(key);
              final isSpecial = key == 'C' || key == '⌫' || key == '%';

              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                    onTap: () => _onKeyPressed(key),
                    child: Container(
                      decoration: BoxDecoration(
                        color: isOperator
                            ? cyanColor
                            : isSpecial
                            ? buttonBg.withOpacity(0.7)
                            : buttonBg,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: isOperator
                            ? [
                                BoxShadow(
                                  color: cyanColor.withOpacity(0.3),
                                  blurRadius: 8,
                                  spreadRadius: 0,
                                ),
                              ]
                            : null,
                      ),
                      child: Center(
                        child: key == '⌫'
                            ? Icon(
                                Icons.backspace_outlined,
                                color: Colors.white70,
                                size: 20,
                              )
                            : Text(
                                key,
                                style: TextStyle(
                                  color: isOperator
                                      ? Colors.white
                                      : isSpecial
                                      ? cyanColor
                                      : Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      }).toList(),
    );
  }
}
