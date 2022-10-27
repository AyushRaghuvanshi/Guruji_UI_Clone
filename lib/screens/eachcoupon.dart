import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EachCoupon extends StatefulWidget {
  const EachCoupon({super.key});

  @override
  State<EachCoupon> createState() => _EachCouponState();
}

class _EachCouponState extends State<EachCoupon> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Stack(
          children: [
            Image.asset('assets/Group 12.png'),
            Positioned(
              top: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('For recharges over 800'),
                  Text(
                    '800 get 900',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Valid to 26/11/2022')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
