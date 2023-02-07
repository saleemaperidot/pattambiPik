import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';

ValueNotifier<int> navigationNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: navigationNotifier,
      builder: (context, int newValue, _) {
        return BottomNavigationBar(
          onTap: (index) {
            navigationNotifier.value = index;
          },
          currentIndex: newValue,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(pikitLocationIcon),
              label: "Near Me",
            ),
            BottomNavigationBarItem(
              icon: Icon(pikitNotificationIcon),
              label: "Alert",
            ),
            BottomNavigationBarItem(
              icon: Icon(pikitSearchIcon),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(pikitShopingBagIcon),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(pikitAccountPersonIcon),
              label: "Account",
            ),
          ],
        );
      },
    );
  }
}
