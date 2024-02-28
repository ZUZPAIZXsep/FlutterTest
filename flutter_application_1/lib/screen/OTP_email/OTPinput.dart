import 'package:flutter/material.dart';

class OTPInput extends StatefulWidget {
  const OTPInput({Key? key}) : super(key: key);

  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
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

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    offset: Offset(1, 2), // changes position of shadow
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
    );
  }
}
