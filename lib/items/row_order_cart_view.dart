import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/items/order_view.dart';
import 'package:restaurant_app/models/cart_provider.dart';
import 'package:restaurant_app/models/order_model.dart';

class RowOrderView extends StatelessWidget {
  const RowOrderView({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OrderView(orderModel: orderModel),
          InkWell(
            onTap: () {
              cartProvider.removeItemFromCart(orderModel);
            },
            child: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
