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
      randomNumber += 10 + random.nextInt(20);
      if (randomNumber > 700) {
        randomNumber = 700;
      }
    });
  }

  decreaseImageSize() {
    setState(() {
      randomNumber -= 10 + random.nextInt(20);
      if (randomNumber < 100) {
        randomNumber = 100;
      }
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
                  width: randomNumber + 100,
                  height: randomNumber + 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
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
