import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../core/app_colors/app_colors.dart';
import '../widgets/into_container.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: false,
            height: double.infinity,
            aspectRatio: 16 / 9,
          ),
          items:  [
            ADHD_Container(),
            Questions_Container(),
            Comunity_Container(),
            Note_Container()
          ]),
    );
  }
}
