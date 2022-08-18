// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  bool _isFavorited = false; //ประกาศตัวแปร กำหนดค่าว่าเริ่มยังไม่ไลค์
  int _favoriteCount = 40; //กำหนดค่าเริ่มต้นที่ 40

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Column(
        children: [
          Image.asset('images/gilly.jpg'),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'The moon',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Thailand'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            // color: Colors.green,
                            padding: const EdgeInsets.all(0),
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              alignment: Alignment.centerRight,
                              icon: (_isFavorited
                                  ? Icon(
                                      Icons.star,
                                      size: 40,
                                    )
                                  : Icon(
                                      Icons.star_border_outlined,
                                      size: 40,
                                    )),
                              color: Color.fromARGB(255, 0, 0, 0),
                              onPressed: _toggleFavorite,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '$_favoriteCount',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.phone),
                        Text('CALL'),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.cookie),
                            Text('HOUTE'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.share),
                            Text('SHARE'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        
                          child: Text(
                              'Once there was a royal couple who grieved excessively because they had no children. When at last, after long waiting, the queen presented her husband with a little daughter, his majesty showed his joy by giving a christening feast, so grand that the like of it was never known. He invited all the fairies in the land—there were seven altogether—to stand godmothers to the little princess; hoping that each might bestow on her some good gift, as was the custom of good fairies in those days.')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount--;
        _isFavorited = false;
      } else {
        _favoriteCount++;
        _isFavorited = true;
      }
    });
  }
}
