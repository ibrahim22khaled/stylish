import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/widgets/custom_app_bar.dart';
import 'package:stylish/features/home_screen/presentation/widgets/all_featured_widget.dart';
import 'package:stylish/features/home_screen/presentation/widgets/search_textfield.dart';

class TrendingProductsScreen extends StatelessWidget {
  const TrendingProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        shadowColor: Color(0xffF9F9F9),
        surfaceTintColor: Color(0xffF9F9F9),
        title: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(10),
            SearchTextfield(),
            const Gap(10),
            AllFeaturedWidget(),
            Gap(10),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio:0.75, 
                //to give the grid items proper proportions and prevent layout conflicts.
              ),
              padding: EdgeInsets.all(10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 3,
                       //Image section gets flex: 3 (60% of the card)
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.vertical(
                            top: Radius.circular(12)
                          ),
                          child: CachedNetworkImage(
                            imageUrl: "https://media.gettyimages.com/id/2168461820/photo/liverpool-fc-v-brentford-fc-premier-league.jpg?s=612x612&w=gi&k=20&c=ko6NUlw_SHVjFtwdwNW2nUU2AQmxuoNPZlF7qMJCFQo=",
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
                                "Salah's kit",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Gap(4),
                              Flexible(
                                child: Text(
                                  "It's the best and thr precious kit in the entire world",
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
                                    '₹500',
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
                                          i < 5
                                              ? Icons.star
                                              : Icons.star_border,
                                          color: Colors.yellow[700],
                                          size: 14,
                                        ),
                                      const Gap(5.7),
                                      Text(
                                        '500',
                                        style: TextStyle(fontSize: 10),
                                      ),
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
