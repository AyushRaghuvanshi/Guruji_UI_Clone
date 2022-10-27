import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:guruji/screens/widgets/explore_post.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  var text = true;
  var like = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Post();
          })),
    );
  }
}
