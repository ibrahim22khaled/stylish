import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/features/home_screen/presentation/widgets/all_featured_widget.dart';
import 'package:stylish/features/home_screen/presentation/widgets/category_card.dart';
import 'package:stylish/features/home_screen/presentation/widgets/promo_carousel_screen.dart';
import 'package:stylish/features/home_screen/presentation/widgets/search_textfield.dart';

class HomeScreenDetails extends StatefulWidget {
  const HomeScreenDetails({super.key});

  @override
  State<HomeScreenDetails> createState() => _HomeScreenDetailsState();
}

class _HomeScreenDetailsState extends State<HomeScreenDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: const Gap(10)),
        SliverToBoxAdapter(child: SearchTextfield()),
        SliverToBoxAdapter(child: const Gap(10)),
        SliverToBoxAdapter(child: AllFeaturedWidget()),
        SliverToBoxAdapter(child: const Gap(5)),
        SliverToBoxAdapter(child: CategoryCard()),
        SliverToBoxAdapter(child: const Gap(5)),
        SliverToBoxAdapter(child: PromoCarouselScreen()),
      ],
    );
  }
}
