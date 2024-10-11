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
            Image.network(
              itemArgs.imageUrl, // Tampilkan gambar produk
              height: 400, // Tinggi gambar
            ),
            SizedBox(height: 16),
            Text(
              '${itemArgs.name}',
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
