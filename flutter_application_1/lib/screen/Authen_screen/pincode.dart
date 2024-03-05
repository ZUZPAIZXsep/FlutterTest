import 'package:flutter/material.dart';

class PINcode extends StatefulWidget {
  const PINcode({Key? key}) : super(key: key);

  @override
  _PINcodeState createState() => _PINcodeState();
}

class _PINcodeState extends State<PINcode> {
  late List<FocusNode> focusNodes;
  late List<TextEditingController> controllers;

  @override
  void initState() {
    super.initState();
    focusNodes = List.generate(6, (index) => FocusNode());
    controllers = List.generate(
      6,
      (index) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onChanged(int index, String value) {
    if (value.isNotEmpty) {
      if (index < controllers.length - 1) {
        focusNodes[index + 1].requestFocus();
      }
    } else {
      if (index > 0) {
        focusNodes[index - 1].requestFocus();
      }
    }
  }

  void _onNumberPressed(String number) {
    for (int i = 0; i < controllers.length; i++) {
      if (controllers[i].text.isEmpty) {
        controllers[i].text = number;
        _onChanged(i, number);
        break;
      }
    }
  }

  void _onDeletePressed() {
    for (int i = controllers.length - 1; i >= 0; i--) {
      if (controllers[i].text.isNotEmpty) {
        controllers[i].clear();
        if (i > 0) {
          _onChanged(i - 1, '');
        }
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: List.generate(
            6,
            (index) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    onChanged: (value) => _onChanged(index, value),
                    decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              if (index == 9) {
                return ElevatedButton(
                  onPressed: () => _onNumberPressed('0'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text('0', style: TextStyle(fontSize: 24)),
                  ),
                );
              } else if (index == 11) {
                return ElevatedButton(
                  onPressed: _onDeletePressed,
                  child: Icon(Icons.backspace),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                );
              } else {
                return ElevatedButton(
                  onPressed: () => _onNumberPressed('${index + 1}'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text('${index + 1}', style: TextStyle(fontSize: 24)),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
