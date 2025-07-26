import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productEntity});
  final ProductEntity productEntity;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            //Image section gets flex: 3 (60% of the card)
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.vertical(
                top: Radius.circular(12),
              ),
              child: CachedNetworkImage(
                imageUrl:
                     productEntity.productImage,
                    //  "https://media.gettyimages.com/id/2168461820/photo/liverpool-fc-v-brentford-fc-premier-league.jpg?s=612x612&w=gi&k=20&c=ko6NUlw_SHVjFtwdwNW2nUU2AQmxuoNPZlF7qMJCFQo=",
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            // Content section gets flex: 2 (40% of the card)
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productEntity.productTitle,// "Salah's kit",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(4),
                  Flexible(
                    child: Text(
                     productEntity.productDescription, // "It's the best and thr precious kit in the entire world",
                      style: TextStyle(fontSize: 10),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Gap(4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${productEntity.productPrice}',// '₹500',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(4),
                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Icon(
                              i < productEntity.productRate? Icons.star : Icons.star_border,
                              color: Colors.yellow[700],
                              size: 14,
                            ),
                          const Gap(5.7),
                          Text('${productEntity.productReviews}', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
