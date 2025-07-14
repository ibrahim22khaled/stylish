import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';
import 'package:stylish/features/on_boarding/presentation/widgets/page_screen.dart';

class OnBoardingScreenDetails extends StatefulWidget {
  OnBoardingScreenDetails({super.key});

  @override
  State<OnBoardingScreenDetails> createState() =>
      _OnBoardingScreenDetailsState();
}

class _OnBoardingScreenDetailsState extends State<OnBoardingScreenDetails> {
  late final PageController _controller;

  int _currentPage = 0;
  static const int numberOfPages = 3;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageScreen(pageController: _controller),
        Positioned(
          bottom: SizeConfig.defaultSize! * 5.5,
          right: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth! / 2.5),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: Color(0xff17223B),
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 16,
                spacing: 10,
              ),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.defaultSize! * 5,
          right: 15,
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "loginscreen");
            },
            child: CustomText(
              text: "Skip",
              fontWeight: FontWeight.w900,
              fontSize: 18,
              textColor: Colors.black,
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 3.5,
          right: 15,
          child: TextButton(
            onPressed: () {
              if (_controller.hasClients) {
                final currentPage = _controller.page?.toInt() ?? 0;
                if (currentPage < 2) {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
                else{
                   Navigator.of(context).pushReplacementNamed("loginscreen");
                }
              }
            },
            child: Row(
              children: [
                if (_currentPage < 2)
                  CustomText(
                    text: "Next",
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    textColor: kMainColor,
                  ),
                if (_currentPage == 2)
                  
                     CustomText(
                      text: "Get Started",
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      textColor:kMainColor,
                    ),
                  
              ],
            ),
          ),
        ),

        Visibility(
          visible: _currentPage == 0 ? false : true,
          child: Positioned(
            bottom: SizeConfig.defaultSize! * 3.5,
            left: 15,
            child: TextButton(
              onPressed: () {
                if (_controller.hasClients) {
                  _controller.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: CustomText(
                text: "Prev",
                fontWeight: FontWeight.w900,
                fontSize: 18,
                textColor: Color(0xffC4C4C4),
              ),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.defaultSize! * 5,
          left: 20,
          child: Row(
            children: [
              CustomText(
                text: '${_currentPage + 1}',
                fontWeight: FontWeight.w900,
                fontSize: 18,
                textColor: Colors.black,
              ),
              CustomText(
                text: "/",
                fontWeight: FontWeight.w900,
                fontSize: 18,
                textColor: Color(0xffA0A0A1),
              ),
              CustomText(
                text: '${numberOfPages}',
                fontWeight: FontWeight.w900,
                fontSize: 18,
                textColor: Color(0xffA0A0A1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
