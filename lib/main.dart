import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo,
        ),
        body: magicball(),
      ),
    )
  );
}
class magicball extends StatefulWidget {
  const magicball({super.key});

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  @override
  int imagenum = 1;
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
          setState(() {
            imagenum = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$imagenum.png'),
      ),
    );
  }
}

