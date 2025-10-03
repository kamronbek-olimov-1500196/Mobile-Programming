import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'like button demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product list'),
        ),
        body: const Center(
          child: ProductWithLike(),
        ),
      ),
    );
  }
}

// Combines product info and like button in one card
class ProductWithLike extends StatelessWidget {
  const ProductWithLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.shopping_cart),
        title: const Text('Nebulus mantle'),
        subtitle: const Text('\$999.99'),
        trailing: const LikeButton(),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isLiked ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 32,
      ),
      onPressed: () {
        setState(() {
          _isLiked = !_isLiked;
        });
      },
    );
  }
}

