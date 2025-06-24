import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';
import 'package:stylish/features/home_screen/presentation/widgets/all_featured_widget.dart';
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

        SliverToBoxAdapter(
          child:
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 2),
            child: Container(
              height: 87,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(children: [
                  CircleAvatar(
                    radius: 28,
                    child: Image.asset("assets/images/beauty.jpg"),
                  ),
                  CustomText(text: "Beauty", fontWeight: FontWeight.w100, fontSize: 10, textColor: Colors.black)
                ],),
              )
            ),
          )
        )
      ],
    );
  }
}
