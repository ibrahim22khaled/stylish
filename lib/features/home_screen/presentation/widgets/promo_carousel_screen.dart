import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class PromoCarouselScreen extends StatefulWidget {
  @override
  _PromoCarouselScreenState createState() => _PromoCarouselScreenState();
}

class _PromoCarouselScreenState extends State<PromoCarouselScreen> {
  int _currentIndex = 0;
  final List<Map<String, String>> _promoItems = [
    {
      'title': '50-40% OFF',
      'subtitle': 'Now in (product)\nAll colours',
      'buttonText': 'Shop Now',
      'image': 'assets/images/offers_carousel.jpg', 
    },
    {
      'title': '20-30% OFF',
      'subtitle': 'New Arrivals\nSummer Collection',
      'buttonText': 'Explore',
      'image': 'assets/images/offers_carousel.jpg', 
    },
    {
      'title': 'Buy 1 Get 1 Free',
      'subtitle': 'Limited Time Offer',
      'buttonText': 'Grab Now',
      'image': 'assets/images/offers_carousel.jpg', 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 220.0,
            viewportFraction: 1.0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: _promoItems.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 343.0, 
                  height: 220.0, 
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                          width: 343.0,
                          height: 220.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: item['title']!,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                textColor: Colors.white,
                              ),
                              const Gap(5),
                              CustomText(
                                text: item['subtitle']!,
                                fontWeight: FontWeight.w100,
                                fontSize: 12,
                                textColor: Colors.white,
                              ),
                              const Gap(20),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 120,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.white),
                                    color: Colors.transparent,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        text: item['buttonText']!,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        textColor: Colors.white,
                                      ),
                                      const Gap(2),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _promoItems.asMap().entries.map((entry) {
            return Container(
              width: 6.0,
              height: 6.0,
              margin: EdgeInsets.symmetric(horizontal: 3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? Color(0xFFFFA3B3) // Active dot color
                    : Color(0xffDEDBDB),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
