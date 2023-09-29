import 'package:flutter/material.dart';
import 'package:restaurant_app/models/interests_model.dart';
import 'package:restaurant_app/views/menu_page.dart';

class InterestedView extends StatelessWidget {
  const InterestedView({super.key, required this.interestedModel});
  final InterestedModel interestedModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return MenuPage(listName: interestedModel.title);
            }));
          },
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(interestedModel.image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            interestedModel.title,
            style: const TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
