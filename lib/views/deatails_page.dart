import 'package:flutter/material.dart';
import 'package:restaurant_app/items/detailes_container.dart';
import 'package:restaurant_app/models/order_model.dart';

class DetailesPage extends StatelessWidget {
  const DetailesPage({super.key, required this.orderModel});
  final OrderModel orderModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3E0F96),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage(orderModel.image),
              ),
            ),
            DetailesContainer(
              orderModel: orderModel,
            ),
          ],
        ),
      ),
    );
  }
}
