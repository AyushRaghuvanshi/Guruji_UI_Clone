import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:guruji/screens/explore.dart';
import 'package:guruji/screens/guidance.dart';
import 'package:guruji/screens/live.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  var tab = [Explore(), Guidance(), Live()];
  int tap_index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        tap_index = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: (tap_index == 0)
                            ? Border(
                                bottom: BorderSide(width: 2.0),
                              )
                            : null,
                      ),
                      child: Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        tap_index = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: (tap_index == 1)
                            ? Border(
                                bottom: BorderSide(width: 2.0),
                              )
                            : null,
                      ),
                      child: Text(
                        'Guidance Q&A',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        tap_index = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: (tap_index == 2)
                            ? Border(
                                bottom: BorderSide(width: 2.0),
                              )
                            : null,
                      ),
                      child: Text(
                        'Live Session',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ))
              ],
            ),
          ),
          tab[tap_index]
        ],
      ),
    );
  }
}
