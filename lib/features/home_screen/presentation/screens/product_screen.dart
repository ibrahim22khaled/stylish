import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/widgets/custom_text.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset("assets/icons/cart.svg"),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.vertical(
                    top: Radius.circular(16),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: productEntity.productImage,
                    fit: BoxFit.cover,
                    height: 213,
                    width: double.infinity,
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
              const Gap(8),
              CustomText(
                text: productEntity.productTitle,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                textColor: Colors.black,
              ),
              const Gap(10),
              Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    Icon(
                      i < productEntity.productRate
                          ? Icons.star
                          : Icons.star_border,
                      color: Colors.yellow[700],
                      size: 14,
                    ),
                  const Gap(5.7),
                  CustomText(
                    text: '${productEntity.productReviews}',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    textColor: Color(0xff828282),
                  ),
                ],
              ),
              const Gap(8),
              CustomText(
                text: '${productEntity.productPrice}EP', // '₹500',
                textColor: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              const Gap(8),
              CustomText(
                text: "Products Details",
                fontWeight: FontWeight.w500,
                fontSize: 14,
                textColor: Colors.black,
              ),
              const Gap(4),
              CustomText(
                text: productEntity.productDescription,
                fontWeight: FontWeight.w100,
                fontSize: 12,
                textColor: Colors.black,
              ),
              const Gap(12),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/gotocart.jpg",
                      width: 136,
                      height: 40,
                    ),
                  ),
                  const Gap(12),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/buynow.jpg",
                      width: 136,
                      height: 40,
                    ),
                  ),
                ],
              ),
              const Gap(12),
              Container(
                padding: EdgeInsets.only(top: 11,bottom: 11,left: 26),
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffFFCCD5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Delivery in", fontWeight: FontWeight.w700, fontSize: 14, textColor: Colors.black),
                    CustomText(text: " Within Hour", fontWeight: FontWeight.bold, fontSize: 21, textColor: Colors.black),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
