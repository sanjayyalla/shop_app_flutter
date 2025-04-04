import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/cart_provider.dart';
import 'package:shop_app_flutter/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(context) {
    // print(Provider.of<String>(context));
    print(Provider.of<CartProvider>(context).cart);
    return Scaffold(
      appBar: AppBar(title: Text('Cart'), centerTitle: true),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete,color: Colors.red,),
            ),
            title: Text(
              cartItem['title'] as String,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text('Size \$${cartItem['size']}'),
          );
        },
      ),
    );
  }
}
