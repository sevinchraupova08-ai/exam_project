import 'package:exam_project/features/onboarding/presentation/pages/favoride_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';
import 'cart_page.dart';

class SabziAiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Sabzi AI"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite,color: Colors.red,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FavoritePage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.red,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartPage()),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: provider.products.length,
        itemBuilder: (context, index) {
          final product = provider.products[index];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
                      child: Center(child: Icon(Icons.image)),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(product.name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(product.category),
                  Text("\$${product.price}"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: product.isFavorite
                              ? Colors.red
                              : Colors.black,
                        ),
                        onPressed: () {
                          provider.toggleFavorite(product);
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          provider.addToCart(product);
                        },
                        child: Text("Add"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}