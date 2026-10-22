import 'package:flutter/material.dart';

void main() {
  runApp(const FlowerShopMenuApp());
}

class FlowerShopMenuApp extends StatelessWidget {
  const FlowerShopMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlowerMenuScreen(),
    );
  }
}

class FlowerMenuScreen extends StatelessWidget {
  const FlowerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flower Shop Menu'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            FlowerCard('rose.jpg', 'Purple Rose Bouquet'),
            FlowerCard('tulips.jpg', 'Purple Tulips Bouquet'),
            FlowerCard('lavender.jpg', 'Lavender Bouquet'),
          ],
        ),
      ),
    );
  }
}

class FlowerCard extends StatelessWidget {
  const FlowerCard(this.file, this.name, {super.key});

  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.purpleAccent,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset('assets/images/$file', width: 100, height: 100),
            const SizedBox(width: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
