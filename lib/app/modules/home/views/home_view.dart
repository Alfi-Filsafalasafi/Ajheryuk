import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 57,
              width: Get.width,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(1, 2, 4, 2),
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F7FA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 47,
                          height: 47,
                          child: Image.asset(
                            "assets/images/person.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF4ED442),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Hallo Alfi Filsafalasafi",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF303030),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/icons/reward.png"),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "+180 ",
                              style: TextStyle(
                                color: Color(0xFFFCD034),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              " Points",
                              style: TextStyle(
                                color: Color(0xFFFCD034),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                    width: 26,
                    height: 26,
                    child: Stack(
                      children: [
                        Container(
                          width: 18,
                          height: 24,
                          child: Image.asset(
                            "assets/icons/notif.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xFFEC5F5F),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  StoryPeople(imagee: "assets/images/fow.jpg"),
                  StoryPeople(imagee: "assets/images/person1.png"),
                  StoryPeople(imagee: "assets/images/person2.png"),
                  StoryPeople(imagee: "assets/images/person1.png"),
                  StoryPeople(imagee: "assets/images/fow.jpg"),
                  StoryPeople(imagee: "assets/images/person2.png"),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Upcoming",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF303030),
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    " Course This Week",
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  itemCategory(title: "All", status: true),
                  itemCategory(title: "UI/UX", status: false),
                  itemCategory(title: "Illustration", status: false),
                  itemCategory(title: "3DAnimation", status: false),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              child: Column(
                children: [
                  CarouselSlider(
                    items: imageSliders,
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        aspectRatio: 1.12,
                        padEnds: false,
                        onPageChanged: (index, reason) {
                          controller.current.value = index;
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.carouselController
                            .animateToPage(entry.key),
                        child: Obx(
                          () => Container(
                            width: 16,
                            height: 7,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: controller.current.value == entry.key
                                  ? Color(0xFFEC5F5F)
                                  : Color(0xFFEEEEEE),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class itemCategory extends StatelessWidget {
  const itemCategory({
    required this.title,
    required this.status,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: status == true ? Color(0xFFEC5F5F) : Color(0xFFF6F7FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: status == true ? Colors.white : Color(0xFF9D9FA0),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class StoryPeople extends StatelessWidget {
  const StoryPeople({
    required this.imagee,
    Key? key,
  }) : super(key: key);

  final String imagee;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18),
      height: 84,
      width: 84,
      child: Stack(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Color(0xFFEC5F5F),
                width: 4,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              width: 82,
              height: 82,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imagee,
                  ),
                ),
                color: Color(0xFFF6F7FA),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 24,
              height: 24,
              child: Image.asset("assets/icons/livecircle.png"),
            ),
          )
        ],
      ),
    );
  }
}
