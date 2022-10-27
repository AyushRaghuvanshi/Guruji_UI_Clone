import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Session extends StatefulWidget {
  const Session({super.key});

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
      height: 140,
      width: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('assets/backgroundcard.png')),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Astro Minesh',
                  style: TextStyle(
                      // color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Spritual Talk',
                  style: TextStyle(
                      // color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.account_circle_rounded, size: 40),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 10,
                      width: 10,
                    ),
                    const Text(
                      '  On Site',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/fire.png'),
                    const Text('230'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/rating.png'),
                    const Text('4,98'),
                  ],
                ),
                const Text('English')
              ],
            ),
          )
        ],
      )),
);
  }
}