import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);
    final cart = provider.cart;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              if (cart.isEmpty) return;

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("O‘chirish"),
                    content: Text("Hamma mahsulotlarni o‘chirmoqchimisiz?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); 
                        },
                        child: Text("Otmena"),
                      ),
                      TextButton(
                        onPressed: () {
                          provider.clearCart();
                          Navigator.pop(context);
                        },
                        child: Text("Udalit"),
                      ),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
      body: cart.isEmpty
          ? Center(child: Text("Cart bo‘sh"))
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cart[index].name),
                  trailing: Text("${cart[index].count}"),
                );
              },
            ),
    );
  }
}