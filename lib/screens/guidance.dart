import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:guruji/screens/widgets/guidance_post.dart';

class Guidance extends StatefulWidget {
  const Guidance({super.key});

  @override
  State<Guidance> createState() => _GuidanceState();
}

class _GuidanceState extends State<Guidance> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: ((context, index) {
              return GPost();
            })));
  }
}
