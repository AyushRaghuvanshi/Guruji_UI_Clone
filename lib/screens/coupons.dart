import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:guruji/screens/available_coupons.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  var tab = [
    Avail(),
    Center(child: Text('No Data')),
    Center(child: Text('No Data'))
  ];
  int tab_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Coupons',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            tab_index = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: (tab_index == 0)
                                ? Border(
                                    bottom: BorderSide(width: 2.0),
                                  )
                                : null,
                          ),
                          child: Text(
                            'Available',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            tab_index = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: (tab_index == 1)
                                ? Border(
                                    bottom: BorderSide(width: 2.0),
                                  )
                                : null,
                          ),
                          child: Text(
                            'Used',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            tab_index = 2;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: (tab_index == 2)
                                ? Border(
                                    bottom: BorderSide(width: 2.0),
                                  )
                                : null,
                          ),
                          child: Text(
                            'Expired',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ))
                  ],
                ),
              ),
              tab[tab_index]
            ],
          ),
        ));
  }
}
