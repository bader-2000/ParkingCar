import 'package:flutter/material.dart';
import 'package:flutter_application_1/seccren/auth/login.dart';
import 'package:flutter_application_1/seccren/auth/models/contentOnBording.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import 'models/onBordingModels.dart';
import 'Screen/on_Bording_widget.dart';

final ContentOnBording = contentOnBording();

class onBordingControll extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    onBordingwidget(
        model: onBordingModel(
            image: contentOnBording.tOnImage1,
            titel: contentOnBording.textTitel1,
            descreption: contentOnBording.textDesc1,
            Bcolor: contentOnBording.tOnBordaingPage1Color,
            subtitel: contentOnBording.textSubTitel1)),
    onBordingwidget(
        model: onBordingModel(
            image: contentOnBording.tOnImage2,
            titel: contentOnBording.textTitel2,
            descreption: contentOnBording.textDesc2,
            Bcolor: contentOnBording.tOnBordaingPage2Color,
            subtitel: contentOnBording.textSubTitel2)),
    onBordingwidget(
        model: onBordingModel(
            image: contentOnBording.tOnImage3,
            titel: contentOnBording.textTitel3,
            descreption: contentOnBording.textDesc3,
            Bcolor: contentOnBording.tOnBordaingPage3Color,
            subtitel: contentOnBording.textSubTitel3)),
  ];

  onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip(context) => Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => loginPage()), (route) => false);
  animatedToNextSlide(context) {
    int nextPage = controller.currentPage + 1;
    if (nextPage > 3) {
      controller.animateToPage(page: nextPage);
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => loginPage()),
          (route) => false);
    }
  }
}
