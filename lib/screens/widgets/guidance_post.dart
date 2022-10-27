import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GPost extends StatefulWidget {
  const GPost({super.key});

  @override
  State<GPost> createState() => _GPostState();
}

class _GPostState extends State<GPost> {
  bool text = true;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(width: 2, color: Color.fromARGB(74, 0, 0, 0)))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        size: 40,
                        Icons.account_circle_rounded,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Use***',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Anisha Anukampa \nDOB- 01/02/1997\nwhen will i get married? love marriage or arrange marraige.\ni manifest someone. will i get to married to him?',
                style: TextStyle(fontSize: 20, height: 1.3),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like = !like;
                        });
                      },
                      icon: like
                          ? Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            )
                          : Icon(Icons.favorite_border_outlined),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.forward)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
