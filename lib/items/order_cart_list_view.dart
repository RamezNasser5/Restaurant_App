import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/items/row_order_cart_view.dart';
import 'package:restaurant_app/models/cart_provider.dart';

class OrderCartListView extends StatelessWidget {
  const OrderCartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: cartProvider.cartItems.length,
            itemBuilder: (context, index) {
              return RowOrderView(orderModel: cartProvider.cartItems[index]);
            },
          );
        },
      ),
    );
  }
}
