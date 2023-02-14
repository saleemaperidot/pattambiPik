import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class customElevstedButton extends StatelessWidget {
  const customElevstedButton({Key? key, required this.buttonName})
      : super(key: key);

  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: pikitGreenButtonText,
          minimumSize: const Size.fromHeight(50)),
      child: Text(
        buttonName,
      ),
    );
  }
}
