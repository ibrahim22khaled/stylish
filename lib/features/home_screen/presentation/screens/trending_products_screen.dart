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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const Gap(10)),
          SliverToBoxAdapter(child: SearchTextfield()),
           SliverToBoxAdapter(child: const Gap(10)),
        SliverToBoxAdapter(child: AllFeaturedWidget()),
        ],
      ),
    );
  }
}
