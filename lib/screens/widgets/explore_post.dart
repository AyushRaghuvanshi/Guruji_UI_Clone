import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool text = true;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                            'Prashant Chaudary',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'Video Report',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            text = !text;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.purple)),
                          child: Text(
                            text ? 'FOLLOW' : 'FOLLOWING',
                            style: TextStyle(color: Colors.purple),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Thank you Dear Yours words touched my heart My Blessing are always there for you May your life be filled with mirracles\n Happy user after predictions come true',
              style: TextStyle(fontSize: 20, letterSpacing: 2, height: 1.5),
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
                  Text(like ? '4' : '3')
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.forward)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
