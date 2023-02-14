import 'package:flutter/material.dart';
import 'package:pikit/constants/constants.dart';

class customText extends StatelessWidget {
  const customText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      style: TextStyle(
        color: pikitBaseGrey,
      ),
      text,
      textAlign: TextAlign.start,
    );
  }
}
