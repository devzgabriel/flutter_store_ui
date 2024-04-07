import 'package:flutter/material.dart';
import 'package:study_flutter_store_ui/models/product.dart';

class Cart extends ChangeNotifier {
  List<Product> availableProducts = [
    Product(
      name: 'Night Nike',
      description: 'Lightweight and comfortable',
      price: '160',
      image: 'lib/images/black_shoe.jpg',
    ),
    Product(
      name: 'HeadFone',
      description: 'good music everywhere',
      price: '90',
      image: 'lib/images/fone.jpg',
    ),
    Product(
      name: 'Glass',
      description: 'Just style',
      price: '40',
      image: 'lib/images/oculos.jpg',
    ),
    Product(
      name: 'Red Nike',
      description: 'Get out of the crowd',
      price: '200',
      image: 'lib/images/red_shoe.jpg',
    ),
    Product(
      name: 'Watch',
      description: 'Time is money',
      price: '200',
      image: 'lib/images/watch.jpg',
    ),
  ];

  List<Product> userCart = [];

  List<Product> getShopList() {
    return availableProducts;
  }

  List<Product> getUserCart() {
    return userCart;
  }

  void addToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}
