import 'package:flutter/foundation.dart';
import 'package:restaurant_app/models/order_model.dart';

class CartProvider with ChangeNotifier {
  final List<OrderModel> _cartItems = [];

  List<OrderModel> get cartItems => _cartItems;

  int totalPrice = 0;

  void addItemToCart(OrderModel item) {
    _cartItems.add(item);
    totalPrice += item.price;
    notifyListeners();
  }

  void removeItemFromCart(OrderModel item) {
    _cartItems.remove(item);
    totalPrice -= item.price;
    notifyListeners();
  }
}
