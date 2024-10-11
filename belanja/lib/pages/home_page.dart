import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBXrIbphAfZ_-HpF-h2Khz8S3IHcnYoY7rr3REJq9xPySbeTAQbG1YCn5CUGHXXrwTIWg&usqp=CAU',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl:
          'https://images.tokopedia.net/img/cache/700/product-1/2018/1/5/6893524/6893524_92e781e3-6682-44f0-9cd1-842ff5678b93_1000_1486.png',
      stock: 15,
      rating: 4.0,
    ),
    Item(
      name: 'Black Papper',
      price: 30000,
      imageUrl:
          'https://down-id.img.susercontent.com/file/23176b2f4ef1595e305b401af5ce2a3b',
      stock: 24,
      rating: 4.7,
    ),
    Item(
      name: 'MSG',
      price: 1500,
      imageUrl:
          'https://longdan.co.uk/cdn/shop/files/1405046_1024x.png?v=1726826907',
      stock: 7,
      rating: 4.8,
    ),
    Item(
      name: 'White Papper',
      price: 29000,
      imageUrl:
          'https://down-id.img.susercontent.com/file/79a7b300d6a456627f5adc6158bf7a43',
      stock: 13,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    item.imageUrl,
                    height: 150, // Tinggi gambar
                    fit: BoxFit.cover, // Menyesuaikan ukuran gambar
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.name,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    'Price: ${item.price}',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    'Stock: ${item.stock}',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    'Rating: ${item.rating}',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
