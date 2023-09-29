import 'package:flutter/material.dart';
import 'package:restaurant_app/items/app_bar_row_menu.dart';
import 'package:restaurant_app/items/bottom_navigator_bar.dart';
import 'package:restaurant_app/items/interested_list_view.dart';
import 'package:restaurant_app/items/order_list_view.dart';
import 'package:restaurant_app/items/promotion_view.dart';
import 'package:restaurant_app/items/search_text_field.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key, required this.listName});

  final String listName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatorBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppBarRowMenu(),
          const SearchTextField(),
          const InterestedListView(),
          const PromotionView(),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10, right: 250),
            child: Text(
              'Popular',
              style: TextStyle(fontSize: 20),
            ),
          ),
          OrderListView(
            listName: listName,
          )
        ],
      ),
    );
  }
}
