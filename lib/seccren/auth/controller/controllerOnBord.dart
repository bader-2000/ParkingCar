import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../PageSplach/spHelper.dart';
import '../Screen/login.dart';
import '../models/contentOnBording.dart';
import '../models/onBordingModels.dart';
import '../models/on_Bording_widget.dart';

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
    if (nextPage < 3) {
      controller.animateToPage(page: nextPage);
    } else {
      closeOnBoarding(context) {
        SPHelper.spHelper.storeUserStatus();
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
          return loginPage();
        }));
      }

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => loginPage()),
      );
    }
  }
}
