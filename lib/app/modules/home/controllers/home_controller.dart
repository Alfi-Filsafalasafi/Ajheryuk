import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var current = 0.obs;
  final CarouselController carouselController = CarouselController();

  final count = 0.obs;

  @override
  void onClose() {}
}
