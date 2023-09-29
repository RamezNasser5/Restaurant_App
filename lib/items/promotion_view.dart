import 'package:flutter/material.dart';

class PromotionView extends StatelessWidget {
  const PromotionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 35.0, right: 200),
          child: Text(
            'Promotions',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 330,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFC29BF5)),
              child: const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Todaye's offer"),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Free box of fries",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          "on all orders offer 50\$",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ]),
              ),
            ),
            Positioned(
              bottom: 50,
              child: ClipOval(
                child: Image.asset(
                  'assets/IMG-20230914-WA0007.jpg',
                  width: 75,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
