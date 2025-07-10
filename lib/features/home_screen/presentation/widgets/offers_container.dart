import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class OffersContainer extends StatelessWidget {
  const OffersContainer({super.key, required this.containerTitle, required this.containerColor, required this.onTap});
  final String containerTitle;
  final Color containerColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize! * 2,),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize!),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: containerTitle,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      textColor: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: GestureDetector(
                        onTap: onTap,
                        child: Container(
                          height: 28,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "View all",
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                textColor: Colors.white,
                              ),
                              const Gap(2),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}