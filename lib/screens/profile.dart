import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:guruji/screens/coupons.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Icon(
              Icons.account_circle_outlined,
              size: 50,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'User 23404',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Guruji ID:6erp57',
              style: TextStyle(color: Color.fromARGB(159, 0, 0, 0)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image.asset('assets/wallet.png')),
                      Text(
                        'Balance',
                        style: TextStyle(color: Color.fromARGB(159, 0, 0, 0)),
                      ),
                      Text(
                        '\$0',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image.asset('assets/following.png')),
                      Text(
                        'Following',
                        style: TextStyle(color: Color.fromARGB(159, 0, 0, 0)),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Coupons())));
                          },
                          child: Image.asset('assets/coupon.png')),
                      Text(
                        'Coupons',
                        style: TextStyle(color: Color.fromARGB(159, 0, 0, 0)),
                      ),
                      Text(
                        '6',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/orders.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Orders'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/live orders.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Live Orders'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/video report.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Video Report'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/birth chart.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Birth Chart'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 2, color: Color.fromARGB(90, 0, 0, 0)))),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/contact us.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Contact Us'),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/follow ua.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Follow us'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 2, color: Color.fromARGB(87, 0, 0, 0)))),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Horoscope',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Complete you Birth info to get your \nhoroscope!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color.fromARGB(96, 0, 0, 0)),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: null,
                        child: Text('Complete your Birthdate info'))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
