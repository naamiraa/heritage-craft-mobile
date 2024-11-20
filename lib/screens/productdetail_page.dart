import 'package:flutter/material.dart';
import 'package:heritage_craft/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color:Color.fromARGB(255, 171, 129, 110)),
            ),
            const SizedBox(height: 10),
            Text("Price: ${product.fields.price}"),
            const SizedBox(height: 10),
            Text("Description: ${product.fields.description}"),
            const SizedBox(height: 10),
            Image.network(
              product.fields.image,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Failed to load image');
              },
            ),
            const SizedBox(height: 10),
            Text("Category: ${product.fields.category}"),
            const SizedBox(height: 10),
            Text("Place of Origin: ${product.fields.placeOfOrigin}"),
            const SizedBox(height: 10),
            Text("Stock: ${product.fields.stock}"),
            const SizedBox(height: 10),
            Text("Availability: ${product.fields.availability}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi kembali ke halaman daftar produk
                Navigator.pop(context);
              },
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}
