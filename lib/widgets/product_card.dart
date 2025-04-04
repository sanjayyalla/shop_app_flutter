import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String imageUrl;
  final Color backgroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor
      ),
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 5),
          Text('\$$price',style: Theme.of(context).textTheme.bodySmall,),
          SizedBox(height: 5),
          // Image(
          //   height: 175,
          //   image: AssetImage(imageUrl)),
          Center(
            child: Image.asset(
              imageUrl,
              height: 175,
              // fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
