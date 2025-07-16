import 'package:aldallah/View/OnbordingScreens/onbording_screen1.dart';
import 'package:aldallah/View/OnbordingScreens/onbording_screen2.dart';
import 'package:aldallah/View/OnbordingScreens/onbording_screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorScreen extends StatefulWidget {
  const IndicatorScreen({super.key});

  @override
  State<IndicatorScreen> createState() => _IndicatorScreenState();
}

class _IndicatorScreenState extends State<IndicatorScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OnbordingScreen1(),
              OnbordingScreen2(),
              OnbordingScreen3(),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.70),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  width: 90.w,
                  height: 10.h,
                  color: Color(0xFFE2BE7E),
                  borderRadius: BorderRadius.circular(20),
                ),
                dotDecoration: DotDecoration(
                  width: 10.w,
                  height: 10.h,
                  color: Color(0xFFF6E9C1),
                  borderRadius: BorderRadius.circular(8),
                ),
                spacing: 8.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
