import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField({Key? key, required this.initialtextValue})
      : super(key: key);
  final String initialtextValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          // enabledBorder: Outlined(),
          ),
      initialValue: initialtextValue,
    );
  }
}
