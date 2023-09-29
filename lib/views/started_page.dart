import 'package:flutter/material.dart';
import 'package:restaurant_app/views/menu_page.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3E0F96),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/IMG-20230914-WA0011.jpg'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 45),
              child: Text(
                'Eat Well',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const Text(
              'and enjoy',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: MaterialButton(
                height: 50,
                minWidth: 250,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const MenuPage(
                      listName: 'All',
                    );
                  }));
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
