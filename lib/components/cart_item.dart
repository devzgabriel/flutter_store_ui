import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter_store_ui/models/cart.dart';
import 'package:study_flutter_store_ui/models/product.dart';

class CartItem extends StatefulWidget {
  Product product;
  CartItem({super.key, required this.product});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.product);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: Image.asset(
          widget.product.image,
          fit: BoxFit.cover,
        ),
        title: Text(widget.product.name),
        subtitle: Text('\$${widget.product.price}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
