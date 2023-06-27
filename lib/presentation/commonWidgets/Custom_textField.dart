import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({Key? key, required this.initialtextValue, this.obs})
      : super(key: key);
  final String initialtextValue;
  bool? obs;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this field should not be empty';
        }
        return null;
      },
      obscureText: obs ?? false,
      decoration: const InputDecoration(
          // enabledBorder: Outlined(),
          ),
      initialValue: initialtextValue,
    );
  }
}
