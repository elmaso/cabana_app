import 'dart:math' as math;

import 'package:cabanaapp/models/cabana.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'cabana_card.dart';

class CabanaCarousel extends StatefulWidget {
  @override
  _CabanaCarouselState createState() => _CabanaCarouselState();
}

class _CabanaCarouselState extends State<CabanaCarousel> {
  PageController _pageController;
  int initialPage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      // para alcanzar a ver parte de los otras cabanas
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: AspectRatio(
          aspectRatio: 0.85,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                initialPage = value;
              });
            },
            controller: _pageController,
            physics: ClampingScrollPhysics(),
            itemCount: cabanias.length,
            itemBuilder: (context, index) => buildCabanaCard(index),
          ),
        ));
  }

  Widget buildCabanaCard(int index) => AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = index - _pageController.page;
          // se usa 0.038 porque 180*0.038 = 7 que son los grados que vamos a rotar
          //Clamp restrige el valor entre -1 y 1
          value = (value * 0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: Duration(microseconds: 350),
          opacity: initialPage == index ? 1 : 0.4,
          child: Transform.rotate(
              angle: math.pi * value,
              child: CabanaCard(cabana: cabanias[index])),
        );
      });
}
