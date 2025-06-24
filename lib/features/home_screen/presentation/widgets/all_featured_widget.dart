import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class AllFeaturedWidget extends StatelessWidget {
  const AllFeaturedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "All Featured",
            fontWeight: FontWeight.w600,
            fontSize: 18,
            textColor: Colors.black,
          ),
          Row(
            children: [
              FeatureContainer(
                featureName: "Sort",
                featureSVG: "assets/icons/sort_icon.svg",
              ),
              const Gap(10),
              FeatureContainer(
                featureName: "Filter",
                featureSVG: "assets/icons/filter_icon.svg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeatureContainer extends StatelessWidget {
  const FeatureContainer({
    super.key,
    required this.featureName,
    required this.featureSVG,
  });
  final String featureName;
  final String featureSVG;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 61,
      height: 24,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: featureName,
              fontWeight: FontWeight.w100,
              fontSize: 12,
              textColor: Colors.black,
            ),
            SvgPicture.asset(featureSVG),
          ],
        ),
      ),
    );
  }
}
