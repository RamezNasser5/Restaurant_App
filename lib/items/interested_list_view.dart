import 'package:flutter/material.dart';
import 'package:restaurant_app/items/interests_view.dart';
import 'package:restaurant_app/models/interests_model.dart';

class InterestedListView extends StatelessWidget {
  const InterestedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InterestedView(
          interestedModel: InterestedModel(
            image: 'assets/IMG-20230914-WA0011.jpg',
            title: 'All',
          ),
        ),
        InterestedView(
          interestedModel: InterestedModel(
            image: 'assets/IMG-20230914-WA0006.jpg',
            title: 'Burger',
          ),
        ),
        InterestedView(
          interestedModel: InterestedModel(
            image: 'assets/IMG-20230914-WA0004.jpg',
            title: 'Pizza',
          ),
        ),
        InterestedView(
          interestedModel: InterestedModel(
            image: 'assets/IMG-20230914-WA0002.jpg',
            title: 'Dessert',
          ),
        ),
      ],
    );
  }
}
