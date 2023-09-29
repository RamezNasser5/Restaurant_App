import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/models/cart_provider.dart';
import 'package:restaurant_app/models/order_model.dart';
import 'package:restaurant_app/views/deatails_page.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailesPage(
                  orderModel: orderModel,
                );
              }));
            },
            child: Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(orderModel.image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0, top: 10),
            child: Text(orderModel.title),
          ),
          Row(
            children: [
              Text(
                '${orderModel.price}',
                style: const TextStyle(color: Color(0xFFCAB91C)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: InkWell(
                  onTap: () {
                    Provider.of<CartProvider>(context, listen: false)
                        .addItemToCart(orderModel);
                    // Note: You may want to update the total price elsewhere as needed.
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
