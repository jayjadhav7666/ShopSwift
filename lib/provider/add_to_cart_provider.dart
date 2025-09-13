import 'package:shopswift/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;

  void togglefavourite(Product product) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
  }

  //for increasing price
  incrementQnt(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  //for decreasing quantity
  decrementQnt(int index) {
    if (_cart[index].quantity <= 1) {
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }

  //for total price when qunatity change then price will be change
  totalPrice() {
    double myTotal = 0.0;
    for (Product element in _cart) {
      myTotal += element.price * element.quantity;
    }
    return myTotal;
  }

  static CartProvider of(BuildContext context, {listen = true}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
