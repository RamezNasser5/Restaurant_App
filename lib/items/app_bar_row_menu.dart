import 'package:flutter/material.dart';

class AppBarRowMenu extends StatelessWidget {
  const AppBarRowMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(
          flex: 1,
        ),
        Text(
          'Menu',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        Spacer(
          flex: 6,
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/IMG-20230914-WA0011.jpg'),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
