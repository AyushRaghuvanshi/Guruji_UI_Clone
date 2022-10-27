import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../const.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).viewPadding.top + 10,
                      bottom: 10,
                      left: 16,
                      right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.yellow,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset(
                                    'assets/wallet.png',
                                    scale: 1.3,
                                  )),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '\$0',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 24.0),
                            child: Image.asset('assets/search.png'),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 24.0),
                              child:
                                  Image.asset('assets/customer service.png')),
                          Padding(
                              padding: const EdgeInsets.only(right: 24.0),
                              child: Image.asset('assets/en.png')),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/explore.png'),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Explore'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/magic-wand (1).png'),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Tarot'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/love-1.png'),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Love'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/marriage-1.png'),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Marriage'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/carrier.png'),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Career'),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: CarouselSlider(
                  options: CarouselOptions(height: 100.0),
                  items: [
                    'Mask Group 8',
                    'Mask Group 9',
                    'Mask Group 10',
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset('assets/$i.png');
                      },
                    );
                  }).toList(),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'LIVE Sessions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 500,
                  ),
                  items: [
                    0,
                    1,
                    2,
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Column(
                          children: list,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ));
  }
}
