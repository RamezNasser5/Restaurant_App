import 'package:flutter/material.dart';
import 'package:restaurant_app/items/order_view.dart';
import 'package:restaurant_app/models/order_model.dart';

class OrderListView extends StatelessWidget {
  OrderListView({
    super.key,
    required this.listName,
  });
  final String listName;
  final List<OrderView> allListView = [
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0005.jpg',
            title: 'Beef Burger',
            price: 20)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0013.jpg',
            title: 'Cheese Pizza',
            price: 32)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0001.jpg',
            title: 'Cheese',
            price: 10)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0003.jpg',
            title: 'Botato',
            price: 15)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0002.jpg',
            title: 'Dessert',
            price: 18)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0004.jpg',
            title: 'Pizza',
            price: 13)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0006.jpg',
            title: 'Burger',
            price: 10)),
    OrderView(
      orderModel: OrderModel(
          image: 'assets/IMG-20230914-WA0009.jpg',
          title: 'freska makarona',
          price: 25),
    ),
    OrderView(
      orderModel: OrderModel(
          image: 'assets/IMG-20230914-WA0010.jpg',
          title: 'makarona',
          price: 20),
    )
  ];

  final List<OrderView> burgerListView = [
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0005.jpg',
            title: 'Beef Burger',
            price: 10)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0006.jpg',
            title: 'Burger',
            price: 15)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0011.jpg',
            title: 'Checken',
            price: 18)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0008.jpg',
            title: 'Tomato',
            price: 13)),
  ];

  final List<OrderView> pizzaListView = [
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0004.jpg',
            title: 'Pizza',
            price: 15)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0009.jpg',
            title: 'Freska Makarona',
            price: 18)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0010.jpg',
            title: 'Makarona',
            price: 13)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0013.jpg',
            title: 'Cheese Pizza',
            price: 10)),
  ];

  final List<OrderView> dessertListView = [
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0001.jpg',
            title: 'Cheese',
            price: 18)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0002.jpg',
            title: 'Dessert',
            price: 13)),
    OrderView(
        orderModel: OrderModel(
            image: 'assets/IMG-20230914-WA0003.jpg',
            title: 'Botato',
            price: 10)),
    OrderView(
      orderModel: OrderModel(
          image: 'assets/IMG-20230914-WA0007.jpg', title: 'Potato', price: 25),
    ),
    OrderView(
      orderModel: OrderModel(
          image: 'assets/IMG-20230914-WA0012.jpg', title: 'Salad', price: 20),
    )
  ];

  // itemsIsAdded() {
  //   List<OrderView> orderIsAddedList = [];
  //   for (var element in orderListView) {
  //     if (element.orderModel.isAddedGetter()) {
  //       orderIsAddedList.add(element);
  //     }
  //   }
  //   return orderIsAddedList;
  // }

  @override
  Widget build(BuildContext context) {
    if (listName == 'All') {
      return SizedBox(
        height: 160,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: allListView.length,
          itemBuilder: (context, index) {
            return allListView[index];
          },
        ),
      );
    } else if (listName == 'Burger') {
      return SizedBox(
        height: 160,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: burgerListView.length,
          itemBuilder: (context, index) {
            return burgerListView[index];
          },
        ),
      );
    } else if (listName == 'Pizza') {
      return SizedBox(
        height: 160,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: pizzaListView.length,
          itemBuilder: (context, index) {
            return pizzaListView[index];
          },
        ),
      );
    } else if (listName == 'Dessert') {
      return SizedBox(
        height: 160,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: dessertListView.length,
          itemBuilder: (context, index) {
            return dessertListView[index];
          },
        ),
      );
    } else {
      return SizedBox(
        height: 160,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: allListView.length,
          itemBuilder: (context, index) {
            return allListView[index];
          },
        ),
      );
    }
  }
}
