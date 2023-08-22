import 'package:flutter/material.dart';
import 'package:flutter_application_1/seccren/Auth/controller/controllerOnBord.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class on_Borading_screen extends StatelessWidget {
  on_Borading_screen({super.key});

  final obcontroll = onBordingControll();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          liquidController: obcontroll.controller,
          onPageChangeCallback: obcontroll.onPageChangeCallback,
          pages: obcontroll.pages,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
          enableLoop: false,
        ),
        Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () => obcontroll.animatedToNextSlide(context),
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  side: const BorderSide(color: Colors.black),
                  padding: const EdgeInsets.all(20),
                  onPrimary: Colors.white),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_forward_ios)),
            )),
        Positioned(
            top: 280,
            right: 20,
            child: TextButton(
              onPressed: () => obcontroll.skip(context),
              child: const Text(
                "skip",
                style: TextStyle(color: Colors.blueGrey),
              ),
            )),
        Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
              activeIndex: obcontroll.controller.currentPage,
              count: 3,
              effect: const WormEffect(
                  activeDotColor: Color(0xff272727), dotHeight: 5.0),
            ))
      ],
    ));
  }
}
