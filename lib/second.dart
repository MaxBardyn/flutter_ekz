import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first.dart';
import 'var.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  increaseImageSize() {
    setState(() {
      decreaseFirstIAndIncreaseSecondImage();
    });
  }

  decreaseImageSize() {
    setState(() {
      increaseFirstAndDecreaseSecond();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
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
                  width: -secondImageStartSize + 800,
                  height: -secondImageStartSize + 800,
                  decoration: BoxDecoration(
                      shape: (firstImageStartSize - secondImageStartSize) <= 20 ? BoxShape.circle : BoxShape.rectangle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.imgur.com/BoN9kdC.png")))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const First()),
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
