import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = GoRouterState.of(context).extra as Item;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(itemArgs.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan Hero widget di sini untuk gambar
            Hero(
              tag: itemArgs.name, // Tag yang sama dengan di HomePage
              child: Image.network(
                itemArgs.imageUrl,
                height: 400,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Name: ${itemArgs.name}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Price: ${itemArgs.price}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Stock: ${itemArgs.stock}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Rating: ${itemArgs.rating}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
