import 'package:flutter/material.dart';
import 'package:stylish/features/home_screen/presentation/models/product_model.dart';
import 'package:stylish/features/home_screen/presentation/widgets/product_card.dart';

class ProductCardListView extends StatelessWidget {
  const ProductCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
    Product(
      image: 'assets/images/PM1.jpg',
      name: 'Women Printed Kurta',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 1500,
      originalPrice: 2499,
      discountPercentage: 40,
      rating: 4.5,
      reviews: 56890,
    ),
    Product(
      image: 'assets/images/PM2.jpg',
      name: 'HRX by Hrithik Roshan Shoes',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 2499,
      originalPrice: 4999,
      discountPercentage: 50,
      rating: 4.0,
      reviews: 344567,
    ),
    Product(
      image: 'assets/images/PM3.jpg',
      name: 'Men\'s Casual Shirt',
      description: 'Comfortable cotton shirt for daily wear',
      price: 899,
      originalPrice: 1799,
      discountPercentage: 50,
      rating: 4.2,
      reviews: 12345,
    ),
    
  ];
    return SizedBox(
          height: 300,
          child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
        );
  }
}