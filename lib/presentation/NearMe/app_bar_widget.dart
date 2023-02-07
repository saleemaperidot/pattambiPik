import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Hotel Name"),
                  Row(
                    children: [
                      Icon(
                        Icons.punch_clock_outlined,
                      ),
                      Text("30 MIN")
                    ],
                  )
                ],
              ),
            ),
            Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
