import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'var.dart';

class Next extends StatefulWidget {
  const Next({Key? key}) : super(key: key);

  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert Image Demo'),
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
                  width: -randomNumber + 800,
                  height: -randomNumber + 800,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.imgur.com/BoN9kdC.png")))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Next()),
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
            child: Icon(Icons.add),
            onPressed: Plus,
          ),
          FloatingActionButton(onPressed: Minus, child: Icon(Icons.remove))
        ],
      ),
    );
  }

  Plus() {
    setState(() {
      randomNumber += 10 + random.nextInt(20);
      if (randomNumber > 700) {
        randomNumber = 700;
      }
    });
  }

  Minus() {
    setState(() {
      randomNumber -= 10 + random.nextInt(20);
      if (randomNumber < 100) {
        randomNumber = 100;
      }
    });
  }
}
