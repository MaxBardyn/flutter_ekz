import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'second.dart';
import 'var.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  increaseImageSize() {
    setState(() {
      increaseFirstAndDecreaseSecond();
    });
  }

  decreaseImageSize() {
    setState(() {
      decreaseFirstIAndIncreaseSecondImage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First screen'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Container(
                  width: firstImageStartSize + 100,
                  height: firstImageStartSize + 100,
                  decoration: BoxDecoration(
                      shape: (firstImageStartSize - secondImageStartSize).abs() <= 5
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.imgur.com/BoN9kdC.png")))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Second()),
                );
              },
            ),
          ],
        )),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.add), onPressed: increaseImageSize),
          FloatingActionButton(
              child: const Icon(Icons.remove), onPressed: decreaseImageSize)
        ],
      ),
    );
  }
}
