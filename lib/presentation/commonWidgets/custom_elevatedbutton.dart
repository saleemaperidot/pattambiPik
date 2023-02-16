import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class customElevstedButton extends StatelessWidget {
  const customElevstedButton(
      {Key? key, required this.buttonName, required this.onclik})
      : super(key: key);

  final String buttonName;
  final Function()? onclik;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onclik,
      style: ElevatedButton.styleFrom(
          backgroundColor: pikitGreenButtonText,
          minimumSize: const Size.fromHeight(50)),
      child: Text(
        buttonName,
      ),
    );
  }
}
