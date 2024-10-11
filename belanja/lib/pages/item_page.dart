import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
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
