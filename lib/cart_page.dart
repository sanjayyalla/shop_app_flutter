import 'package:flutter/material.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build( context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Cart Page',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

    );
  }
}