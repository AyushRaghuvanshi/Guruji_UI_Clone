import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:guruji/screens/eachcoupon.dart';

class Avail extends StatefulWidget {
  const Avail({super.key});

  @override
  State<Avail> createState() => _AvailState();
}

class _AvailState extends State<Avail> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: TextField(
                          decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Please enter a valid code',
                        border: OutlineInputBorder(),
                      ))),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {},
                    child: Text('Redeem'))
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: ((context, index) {
                      return EachCoupon();
                    })),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 24.0),
                child: ElevatedButton(onPressed: null, child: Text('Apply')),
              )
            ],
          )
        ],
      ),
    );
  }
}
