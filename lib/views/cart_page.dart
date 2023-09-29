import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/items/order_cart_list_view.dart';
import 'package:restaurant_app/models/cart_provider.dart';
import 'package:restaurant_app/views/completed_page.dart';
import 'package:restaurant_app/views/menu_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20),
            child: Text(
              'Items in cart',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const OrderCartListView(),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 30),
            child: Text(
              'Order instructions',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFDFDBDB),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(
                flex: 1,
              ),
              const Text(
                'Total :',
                style: TextStyle(fontSize: 20),
              ),
              const Spacer(
                flex: 6,
              ),
              Text(
                '${Provider.of<CartProvider>(context, listen: true).totalPrice} \$',
                style: const TextStyle(color: Color(0xFFB4A519)),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: MaterialButton(
              height: 40,
              color: const Color(0xFF3E0F96),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CompletedPage();
                }));
              },
              child: const Text(
                'Request Order',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 135.0, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MenuPage(listName: 'All');
                }));
              },
              child: const Text(
                'Back to menu',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
