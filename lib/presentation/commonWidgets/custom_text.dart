import 'package:flutter/material.dart';
import 'package:pikit/constants/constants.dart';

class customText extends StatelessWidget {
  customText({Key? key, required this.text, this.obs}) : super(key: key);
  final String text;
  bool? obs;

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
